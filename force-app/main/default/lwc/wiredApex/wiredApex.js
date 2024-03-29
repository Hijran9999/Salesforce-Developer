import getTopAccounts from '@salesforce/apex/AccountController.getTopAccounts';
import { LightningElement ,wire} from 'lwc';



const COLUMNS = [{
    label:"Account Name", fieldName:"Name",type:"text"},
{label:"Account Type", fieldName:"Type", type:"text"},
{label:"Industry",fieldName:"Industry",type:"text"},
{label:"Annual Revenue",fieldName:"AnnualRevenue", type:"currency"}];
export default class WiredApex extends LightningElement {
columns =COLUMNS;
    @wire(getTopAccounts)
    accounts;

}