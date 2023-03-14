import Industry_FIELD from '@salesforce/schema/Account.Industry';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';

import { LightningElement, wire } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class CreateRecordAccount extends LightningElement {
defaultRecordTypeId;
formdata= {};
industryOptions = [];
    @wire(getObjectInfo, {objectApiName: ACCOUNT_OBJECT})
    accountInfo;

    @wire(getPicklistValues,{fieldApiName: Industry_FIELD, recordTypeId: '$accountInfo.data.defaultRecordTypeId'})
    picklistHandler({data,error}){
        if(data){
            this.industryOptions = data.values;
        }
            if(error){

                console.error(error);
            }
        }
            saveAccount(){
             const recordInput = {//instance gibi


                apiName: ACCOUNT_OBJECT.objectApiName,
                fields:this.formdata
             }
             //call createRecord
                 createRecord(recordInput)
                 .then(result =>{
                   //show success mesaage
                 const sucsms = new ShowToastEvent({
                        title:"Success",
                        message:"Account record has been created",
                        variant:"success"
                   });
                   this.dispatchEvent(sucsms);
                 })
                 .catch(error => {

                   console.error(error);

                 })

            }
    cancelAccount(){
     this.template.querySelector('form.accountform').reset();
     this.tagName.querySelector('lightning-combobox').value=undefined;
     this.formdata= {};//gonderiyorzhtml undefine et html gonder


    }
         
    changeHandler(event){

        //const name = event.target.name;
        //const value = event.target.value;
        const {name,value}=event.target;
        this.formdata[name] = value;
        console.log(JSON.stringify(this.formdata));

    }

    
}
