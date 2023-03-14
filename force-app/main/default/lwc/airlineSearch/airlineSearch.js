import getAirilineCountries from '@salesforce/apex/Airline2Controller.getAirilineCountries';
import { LightningElement } from 'lwc';

export default class AirlineSearch extends LightningElement {

    error;
    airlines;
    changeHandler(event){
        const searchWord = event.target.value;
        if(searchWord.length > 0){
            getAirilineCountries({searchKey:searchWord})
            .then (result =>{
    
    
                this.airlines = result;
                this.error = undefined;
            })
            .catch(error =>{
                this.error = error.body.message;
                this.airlines =undefined;
            })
        }else{
            this.airlines= undefined;
            this.error = "Please enter a search word in order to see matching employee records";
        }
        
    }

    /*changehandler(event){
        const searchWord = event.target.value;
        if(searchWord.length > 0){
       getAirilineCountries({searchKey:this.searchWord})
       .then(result =>{
           
        this.airlines = result;
        this.error = undefined;
       
        }
        else{

            this.airlines = undefined;
            this.error = 'There are no matching airline records for the entered search';
        }
    })
    .catch(error=>{
        this.error = error.body.message;
        this.airlines = undefined;
    })
    }else{
        this.airlines = undefined;
        this.error = 'Please enter a search word in order to see matching airline records';
    }*/
}