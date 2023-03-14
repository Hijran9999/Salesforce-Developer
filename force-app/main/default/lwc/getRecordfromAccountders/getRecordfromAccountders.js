
import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import AnnualRevenue_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import Industry_FIELD from '@salesforce/schema/Account.Industry';
import Name_FIELD from '@salesforce/schema/Account.Name';


const FIELDS = [ AnnualRevenue_FIELD,Industry_FIELD ,Name_FIELD];
export default class GetRecordfromAccountders extends LightningElement {
recordId='001Do000002YlspIAC';
name;
revenue;
industry;

    @wire(getRecord,{ recordId: '$recordId',fields:FIELDS})
    recordHandler({data,error}){
        if(data){
            this.name =getFieldValue(data,  Name_FIELD );
            this.revenue  = getFieldValue(data,AnnualRevenue_FIELD );
            this.industry = getFieldValue(data, Industry_FIELD);
        }
        if(error){
            console.error(error);
        }
    }
}