import { getRecord, updateRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import 	Name__c_FIELD from '@salesforce/schema/Employee__c.Name__c';
import Email__c_FIELD from '@salesforce/schema/Employee__c.Email__c';
import Designation_FIELD from '@salesforce/schema/Employee__c.Designation__c';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

const FIELDS = [Name__c_FIELD,Email__c_FIELD, Designation_FIELD];
export default class UpdateRecordEmployee extends LightningElement {
    recordId = 'a08Do000000Pgc6IAC';
     formdata = {};
    @wire(getRecord,{recordId: '$recordId', fields: FIELDS})
   employee;
   
 
    
changeHandler(event){
    const{name, value}  = event.target;
    this.formdata[name] = value;
}

updateEmployee(){
this.formdata["Id"] = this.recordId;
   const recordInput={
    fields:this.formdata
   };
    
  updateRecord(recordInput)
   .then(result=>{
         const shm = new ShowToastEvent({

            title:"Success",
            message:"Updated",
            variant:"success"
         });
         this.dispatchEvent(shm);
   })
   .catch(error =>{
    console.error(error);
   })
}
}