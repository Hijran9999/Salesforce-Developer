import { LightningElement,api } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import Name_FIELD from '@salesforce/schema/Account.Name';
import Type_FIELD from '@salesforce/schema/Account.Type';
import Industry_FIELD from '@salesforce/schema/Account.Industry';
import AnnualRevenue_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import Phone_FIELD from '@salesforce/schema/Account.Phone';

export default class LighteningRecordViewFormAccount extends LightningElement {
   @api recordId;
   // recordId="001Do000003DzfhIAC";
    objectApiName=ACCOUNT_OBJECT;
    
fields={
         name : Name_FIELD,
        type:Type_FIELD,
        industry : Industry_FIELD,
        annualrevenue:AnnualRevenue_FIELD,
        phone:Phone_FIELD

};

  

}
//carrybagobject