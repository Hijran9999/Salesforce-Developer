import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { LightningElement, wire } from 'lwc';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';

export default class GetpicklistvalueAccountShortv extends LightningElement {
    defaultRtId;
    industryOptions= [];
    industrych;
    @wire(getObjectInfo,{objectApiName: ACCOUNT_OBJECT })
    objectInfoHandler({data,error}){
        if(data){
            //console.log(data);
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if(error){

            console.error(error);
        }
    }

@wire(getPicklistValues,{fieldApiName: INDUSTRY_FIELD, recordTypeId: '$defaultRtId'})
picklistHandler({data,error}){

    if(data){

         console.log('Data sonuclari ' +data);
         this.industryOptions = data.values;


    }
    if(error){
        console.error(error);
    }
}
changeHandler(event){

this.industrych = event.target.value;

}

}