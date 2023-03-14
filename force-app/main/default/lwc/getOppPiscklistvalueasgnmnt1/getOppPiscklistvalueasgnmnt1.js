import { LightningElement, wire } from 'lwc';
import Opportunity_OBJECT from '@salesforce/schema/Opportunity';
import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';


export default class GetOppPiscklistvalueasgnmnt1 extends LightningElement {
stageOptions=[];
typeOptions = [];
oppRtId;
selectedStage;
selectedType;
oppName;


@wire(getObjectInfo, {objectApiName: Opportunity_OBJECT})
objectInfoHandler({data, error}){

    if(data){
     this.oppRtId=data.defaultRecordTypeId;

    }
    if(error){

        console.error(error);
    }
}
    @wire(getPicklistValuesByRecordType,{objectApiName:Opportunity_OBJECT, recordTypeId: '$oppRtId'})
    picklistHandler({data,error}){
        if(data){
          this.stageOptions = data.picklistFieldValues.StageName.values;
          this.typeOptions =data.picklistFieldValues.Type.values;

        }
        if(error){

            console.error(error);
        }

    }
       changeHandler(event){

        if(event.target.name === 'Name'){

            this.oppName = event.target.value;
        }else if(event.target.name==="Type"){

            this.selectedType = event.target.value;
        }else{
            this.selectedStage = event.target.value;
        }
       }



}