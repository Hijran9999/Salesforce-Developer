import getLeads from '@salesforce/apex/LeadControl.getLeads';
import { LightningElement } from 'lwc';


const COLUMNS = [
    {label:"First Name", fieldName:"FirstName",type:"text"},
    {label:"Last Name", fieldName:"LastName",type:"text"},
    {label:"Title", fieldName:"Title",type:"text"},
    {label:"Company", fieldName:"Company",type:"text"},

];




export default class Usecase2leadscreen extends LightningElement {

error;
leads;
columns = COLUMNS;

//isleads = false;
selectLeads(){
    if(this.leads || this.error){
        this.leads = undefined;
        this.error = undefined;
    }else{
        getLeads()
        .then(result => {
            this.leads = result;
           // this.isleads = !this.isLeads;
     
        })
        .catch(error => {
            this.error = error;
        })
    
    }
   
}

}

