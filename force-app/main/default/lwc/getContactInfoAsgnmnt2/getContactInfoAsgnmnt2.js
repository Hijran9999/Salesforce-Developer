import { LightningElement, wire } from 'lwc';
import Contact_OBJECT from '@salesforce/schema/Contact';
import FirstName_FIELD from '@salesforce/schema/Contact.FirstName';
import LastName_FIELD from '@salesforce/schema/Contact.LastName';
import Title_FIELD from '@salesforce/schema/Contact.Title';
import MobilePhone_FIELD from '@salesforce/schema/Contact.MobilePhone';
import Department_FIELD from '@salesforce/schema/Contact.Department';


import {getFieldValue, getRecord } from 'lightning/uiRecordApi';
import Email_FIELD from '@salesforce/schema/Contact.Email';

const FIELDS = [FirstName_FIELD,LastName_FIELD,Title_FIELD,MobilePhone_FIELD,Department_FIELD];
export default class GetContactInfoAsgnmnt2 extends LightningElement {
contactRtId='003Do0000076saMIAQ';
contact;


//@wire(getObjectInfo,{objectApiName: Contact_OBJECT})
//objectInfo;


@wire(getRecord,{recordId: '$contactRtId', fields:FIELDS})
objectHandler({data,error}){

    if(data){

      console.log(data);
      this.contact = data;
      // this.fname = getFieldValue(data,FirstName_FIELD);
       //this.lastname = getFieldValue(data, LastName_FIELD);
       //this.title = getFieldValue(data,Title_FIELD);
       //this.mobile = getFieldValue(data, MobilePhone_FIELD);


    }if(error){

        console.error(error);
    }
}

get name(){


    return getFieldValue(this.contact, FirstName_FIELD) + ' ' +getFieldValue (this.contact, LastName_FIELD);
}

get title(){
    return getFieldValue(this.contact, Title_FIELD);
}

get email(){
    return getFieldValue(this.contact, Email_FIELD);
}

get mobile(){
    return getFieldValue(this.contact, MobilePhone_FIELD);
}

get department(){

return getFieldValue(this.contact,Department_FIELD);

}
}