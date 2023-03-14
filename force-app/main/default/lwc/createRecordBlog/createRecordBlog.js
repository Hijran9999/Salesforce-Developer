import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import Employee__c_OBJECT from '@salesforce/schema/Employee__c';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import { createRecord } from 'lightning/uiRecordApi';


export default class CreateRecordBlog extends LightningElement {
formdata = {};
@wire(getObjectInfo, {objectApiName: Employee__c_OBJECT})
objectInfohandler;
 

saveEmployee(){
    const recordInput = {

        apiName: Employee__c_OBJECT.objectApiName,
        fields:this.formdata
    };

    createRecord(recordInput)
    .then(result => {
        console.log(result);
        this.fields  ={};
        const shm = new ShowToastEvent({

            title:"Success",
            message:"Saved",
            variant:"success"
        });
        this.dispatchEvent(shm);
    })
.catch(error => {
console.error(error);
})

}
cancelEmployee(){
    this.template.querySelector('form.empform').reset();
    this.formdata = {};
}

changeHandler(event){
    const {name,value} = event.target;
    this.formdata[name] = value;
}
}
