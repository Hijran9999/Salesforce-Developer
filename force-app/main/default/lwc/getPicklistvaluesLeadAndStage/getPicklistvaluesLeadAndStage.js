import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPP_OBJECT from '@salesforce/schema/Opportunity';


export default class GetPicklistvaluesLeadAndStage extends LightningElement {
    defaultRtId;
    leadSourceOptions = [];
    stageNameOptions = [];
    selectedLead;
    selectedStage;

     @wire(getObjectInfo, {objectApiName: OPP_OBJECT })
     objectInfoHandler({data, error}){
        if(data){
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if(error){
            console.error(error);
        }
     }

    @wire(getPicklistValuesByRecordType, {objectApiName: OPP_OBJECT, recordTypeId: '$defaultRtId'})
    picklistHandler({data,error}){
        if(data){
            console.log(data);
            this.leadSourceOptions = data.picklistFieldValues.LeadSource.values;
            this.stageNameOptions = data.picklistFieldValues.StageName.values;

        }
        if(error){
            console.error(error);
        }
    }
    changeHandler(event){
        if(event.target.name === "StageName") {
            this.selectedStage = event.target.value;

        }else {
            this.selectedLead  = event.target.value;
        }
    }

}

//export default class GetPicklistvaluesLeadAndStage extends LightningElement {}