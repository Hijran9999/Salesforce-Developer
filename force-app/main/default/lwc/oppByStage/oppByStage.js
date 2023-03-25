import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import Opp_OBJECT from '@salesforce/schema/Opportunity';
import StageName_FIELD from '@salesforce/schema/Opportunity.StageName';
import getTopOpportunities from '@salesforce/apex/OpportunityCon.getTopOpportunities';
const COLUMNS = [
    {label:"Opp Name",fieldName:"Name",type:"text"},
    {label:"Opp Type,",fieldName:"Type,",type:"text"},
    {label:"Amount",fieldName:"Amount",type:"currency"},
    {label:"Close Date",fieldName:"CloseDate",type:"date"}
];
export default class OppByStage extends LightningElement {
      columns = COLUMNS;
      opps;
      error='select stage';
    selectedStage;
    stageOptions;
    @wire(getObjectInfo,{objectApiName: Opp_OBJECT})
    oppInfo;
    @wire(getPicklistValues, {fieldApiName:StageName_FIELD, recordTypeId:'$oppInfo.data.defaultRecordTypeId'})
    picklisthandler({data,error}){
        if(data){
            this.stageOptions = data.values;
        }if(error){
            console.error(error);
        }
    }
    changeHandler(event){
        const selectedStage = event.target.value;
        getTopOpportunities({stage: selectedStage})
        .then(result => {
            if(result.length > 0){
                this.opps = result;
                this.error = undefined;
            }else{
                this.opps = undefined;
                this.error = 'No matching records';
            }
           
        })
        .catch(error => {

            this.error = error.body.message;
            this.opps = undefined;
        })
        }

    }
