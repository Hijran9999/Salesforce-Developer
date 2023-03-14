import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Employee__c.Name';
import NAME__C_FIELD from '@salesforce/schema/Employee__c.Name__c';
import Designation__c_FIELD from '@salesforce/schema/Employee__C.Designation__c';
import Gender__c_FIELD from '@salesforce/schema/Employee__c.Gender__c';
import Email__c_FIELD from '@salesforce/schema/Employee__c.Email__c';
import username___FIELD from '@salesforce/schema/Employee__c.username__c';
import Phone_FIELD from '@salesforce/schema/Employee__c.Phone_Number__c';
export default class GetRecordEmployeeobj extends LightningElement {
recordId='a08Do000000Pgc6IAC';
empoyeeId;
empName;
designation;
gender;
email;
username;
phoneNumber;
    @wire(getRecord, {recordId: '$recordId', layoutTypes: ['Full'], modes:['View']})
    recordhandler({data, error}){

        if(data){
            console.log(data);
            //aproach 1
            /*this.empoyeeId = data.fields.Name.value;
            this.empName = data.fields.Name__c.value;
            this.designation  = data.fields.Designation__c.value;
            this.gender = data.fields.Gender__c.displayValue;
            this.email = data.fields.Email__c.value;
            this.username = data.fields.username__c.value;
            this.phoneNumber = data.fields.Phone_Number__c.value;*/

            //aproach 2
            this.empoyeeId =getFieldValue(data, NAME_FIELD);
            this.empName = getFieldValue(data,NAME__C_FIELD);
            this.designation  = getFieldValue(data,Designation__c_FIELD);
            this.gender = getFieldValue(data,  Gender__c_FIELD);
            this.email = getFieldValue(data, Email__c_FIELD);
            this.username = getFieldValue(data,username___FIELD );
            this.phoneNumber = getFieldValue(data, Phone_FIELD);
            
        }if(error){
            console.error(error);
        }
    }
}