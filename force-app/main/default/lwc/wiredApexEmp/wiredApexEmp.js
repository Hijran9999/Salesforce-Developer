import topFiveEmp from '@salesforce/apex/EmployeeController.topFiveEmp';
import { LightningElement, wire } from 'lwc';
const COLUMNS =[
    {label:"Employee Name", fieldName:"Name__c", type:"text"},
    {label:"Email", fieldName:"Email__c", type:"email"},
    {label:"Designation", fieldName:"Designation__c", type:"text"},
    {label:"Username", fieldName:"username__c", type:"text"}
   

];
  

export default class WiredApexEmp extends LightningElement {

columns=COLUMNS;

    @wire(topFiveEmp)
    employees;


}
