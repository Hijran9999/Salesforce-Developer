import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import Title_FIELD from '@salesforce/schema/Contact.Title';
import LastName_FIELD from '@salesforce/schema/Contact.LastName';
import Phone_FIELDS from '@salesforce/schema/Contact.Phone';
import Email_FIELDS from '@salesforce/schema/Contact.Email';

const FIELDS = [LastName_FIELD, Phone_FIELDS, Title_FIELD, Email_FIELDS];
export default class GetRecordContactKendim extends LightningElement {
     recordId='003Do00000A4nuMIAR'
contact;


    @wire(getRecord,{ recordId:'$recordId', fields: FIELDS})
     contactInfoHandler({data,error}){

        if(error){

            console.log(error);
        }else if(data){
            this.contact = data;//bu kontaktin datasini getir
            console.log(this.contact);//consolda bana datayi goster geleni 
        }
     }
    
    
}
// = '003Do00000A4nuMIAR'