import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import Employee11__c_FIELD from '@salesforce/schema/Employee11__c';
import NAME_FIELD from '@salesforce/schema/Employee11__c';


import Designation__c_FIELD from '@salesforce/schema/Employee11__c.Designation__c';
import 	Email__c_FIELD from '@salesforce/schema/Employee11__c.Email__c';
import 	Username__c_FIELD from '@salesforce/schema/Employee11__c.Username__c';
import Phone_Number__c_FIELD from '@salesforce/schema/Employee11__c.Phone_Number__c';
import Gender__c_FIELD from '@salesforce/schema/Employee11__c.Phone_Number__c';




export default class LightingrecordfromEmployee extends LightningElement {
    objectapiname= Employee11__c_FIELD;
    fields={
           designation:Designation__c_FIELD,
           name:NAME_FIELD ,
           email:Email__c_FIELD,
           username:Username__c_FIELD,
           phone:Phone_Number__c_FIELD,
           gender: Gender__c_FIELD
    }

    successhandler(){
const showmsg = new ShowToastEvent({

title:"Success",
message:"success saved",
variant:"success"

});

this.dispatchEvent(showmsg);

    }
}