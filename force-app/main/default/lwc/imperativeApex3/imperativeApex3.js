import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/apex/Account';
import Industry_FIELD from '@salesforce/schema/Account.Industry';
import getAccountsByIndustry from '@salesforce/apex/AccountController.getAccountsByIndustry';

const COLUMNS = [
    {label:"Account Name",fieldName:"Name",type:"text"},
    {label:"Account Type",fieldName:"Type",type:"text"},
    {label:"Annual Revenue",fieldName:"AnnualRevenue",type:"currency"},
    {label:"Industry",fieldName:"Industry",type:"text"},

];
export default class ImperativeApex3 extends LightningElement {
 accounts;
 columns = COLUMNS;
industryOptions = [];
    @wire(getObjectInfo,{objectApiName:ACCOUNT_OBJECT})
    accountInfo;

    @wire(getPicklistValues,{fieldApiName: Industry_FIELD,recordTypeId:'$accountInfo.data.defaultRecordTypeId'})
    picklistHandler({data,error}){
        if(data){
                    this.industryOptions = data.values;
        }
        if(error){
            console.error(error);
        }
    }
    changeHandler(event){
        const selectedIndustry = event.target.value;
        getAccountsByIndustry ({industry: selectedIndustry})
        .then(result => {
            this.accounts = result;
            
        })
        .catch(error =>{
            console.error(error);
        })
    }

}