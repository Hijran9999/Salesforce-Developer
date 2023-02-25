import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Opportunity_OBJECT from '@salesforce/schema/Opportunity';
import Name_FIELD from '@salesforce/schema/Opportunity.Name';
import Type_FIELD from '@salesforce/schema/Opportunity.Type';
import Stage_FIELD from '@salesforce/schema/Opportunity.StageName';
import Amount_FIELD from '@salesforce/schema/Opportunity.Amount';
import AccountId_FIELD from '@salesforce/schema/Opportunity.AccountId';
import CloseDate_FIELD from '@salesforce/schema/Opportunity.CloseDate';

export default class LightingRecordForOpp extends LightningElement {
 
objectName = Opportunity_OBJECT;
fields=[Name_FIELD,Type_FIELD, Stage_FIELD, Amount_FIELD,AccountId_FIELD,CloseDate_FIELD];
recordId="006Do000002NtXYIA0";

successHandler(){
    const successToast = new ShowToastEvent({
       title:"Success",
       message:"Opp has saved",
       variant:"success"
})

     this.dispatchEvent(successToast);
}
}