import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { getPicklistValues, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';

import { LightningElement, wire } from 'lwc';

export default class GetPicklistRecordTypeIdAccountshvidoe extends LightningElement {
error;

accountSourceOptions = [];
@wire(getPicklistValuesByRecordType, {objectApiName: ACCOUNT_OBJECT, recordTypeId: '012Do000000LEbR'})
objectInfoHandler({data,error}){

    if(error){

        this.error = error;
    }
    else if(data){

        console.log(data);
        this.industryOptions = data.values;

    }
}


}