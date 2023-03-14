import searchEmployees from '@salesforce/apex/EmployeCtr.searchEmployees';
import { LightningElement } from 'lwc';

export default class ImperativeApexEmp extends LightningElement {
employees;
error;




    searchHandler(event){
        const searchWord = event.target.value;
        if(searchWord.length > 0){
            searchEmployees({searchKey:searchWord})
            .then (result =>{
    
    
                this.employees = result;
                this.error = undefined;
            })
            .catch(error =>{
                this.error = error.body.message;
                this.employees =undefined;
            })
        }else{
            this.employees = undefined;
            this.error = "Please enter a search word in order to see matching employee records";
        }
        
    }
}