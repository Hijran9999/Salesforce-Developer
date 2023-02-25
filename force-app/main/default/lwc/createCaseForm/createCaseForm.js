import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

import CASE_OBJECT from '@salesforce/schema/Case';
import ACCOUNT_NAME_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACT_NAME_FIELD from '@salesforce/schema/Case.ContactId';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import Description_FIELD from '@salesforce/schema/Case.Description';
import Priority_FIELD from '@salesforce/schema/Case.Priority';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';

export default class LighteningRecordViewFormAccount extends LightningElement {

objectApiName=CASE_OBJECT;
recordId='500Do000001aEPhIAM';
fields=[ACCOUNT_NAME_FIELD,CONTACT_NAME_FIELD ,SUBJECT_FIELD, Description_FIELD,Priority_FIELD,ORIGIN_FIELD];



successhandler(){

const successToast = new ShowToastEvent({
    title:"Success",
    message:"Case have been saved",
    variant:"success"
    
})

this.dispatchEvent(successToast);
}
}