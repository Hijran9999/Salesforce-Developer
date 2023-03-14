import searchEmployees from '@salesforce/apex/EmployeCtr.searchEmployees';
import { LightningElement } from 'lwc';

export default class EmployeeSearch extends LightningElement {

employees;
error;
    searchHandler(event){

        const searchWord = event.target.value;
        if(searchWord.length>0){
        searchEmployees({searchKey:searchWord})
        .then(result => {
            if(result.length > 0) {
                this.employees = result;
                this.error = undefined;
            } else {
                this.employees = undefined;
                this.error = "there are no matching employee records for the entered search. Try using different search criteria!";
            }                
        })
        .catch(error => {
            console.log(error);
            this.error = error.body.message;
            this.employees=undefined;
        })
    }else{
        this.employees = undefined;
        this.error = 'please enter ...';
    }
    }

}