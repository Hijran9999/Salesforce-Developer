import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent'
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/AcceptedEventRelation.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import ID_FIELD from '@salesforce/schema/AcceptedEventRelation.Id';


export default class LightiningRecordForm extends LightningElement {
    objectName=ACCOUNT_OBJECT;
    recordId="001Do000003DzfhIAC";
    fields=[ID_FIELD, NAME_FIELD, TYPE_FIELD, INDUSTRY_FIELD,REVENUE_FIELD,PHONE_FIELD];

    successHandler(){
        const successToast = new ShowToastEvent({
           title:"Success",
           message:"Account has saved",
           variant:"success"
    })
    
         this.dispatchEvent(successToast);
    }
    }
