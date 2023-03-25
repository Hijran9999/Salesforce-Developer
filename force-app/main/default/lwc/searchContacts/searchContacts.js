
import searchContacts from '@salesforce/apex/ContactContrl.searchContacts';
import { LightningElement } from 'lwc';


const COLUMNS= [
    {label:"FirstName", fieldName:"FirstName",type:"text"},
    {label:"LastName", fieldName:"LastName",type:"text"},
    {label:"Email", fieldName:"Email",type:"email"},
    {label:"Title", fieldName:"Title",type:"text"}

];
export default class SearchContacts extends LightningElement {
columns = COLUMNS;
error;
contacts;
searchHandler(event){

    const searchWord = event.target.value;
   searchContacts({searchKey: searchWord})
    .then(result =>{
        if(result.length > 0){

            this.contacts = result;
            this.error= undefined;
        }else{
            this.contacts = undefined;
            this.error = 'There are no matching records for entered search key. Try using different search';
        }
    })
    .catch(error => {
        this.result = undefined;
        this.error = error.body.message;

    })
  }

}