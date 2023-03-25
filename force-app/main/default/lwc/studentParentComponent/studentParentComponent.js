import listBook from '@salesforce/apex/BookController.listBook';
import { LightningElement } from 'lwc';




    const COLUMNS = [
        {label: 'Book Name', fieldName: 'Book_Name__c', type: 'text'},
        {label: 'Price', fieldName: 'Price__c', type: 'currency'},
        {label: 'Sayfa Sayisi', fieldName: 'Sayfa_sayisi__c', type: 'number'}
       
    ];
    export default class StudentParentComp extends LightningElement {
     
        bookInfo;
        error;
        columns = COLUMNS;
    
        searchHandler(event){
            const searchWord = event.target.value;
            listBook({searchkey: searchWord})//method kitab listesi dondu ve bunu bookinfoya atdik
            //ilk listeyi al listbooka at
            //2--htmlde display result komponenti cagryrz
            //3--aldigimz listeyi records olaralk display resulta gonderyrz
            //1inout 2jse result olaark bookinfoya ata
            //3--dispalya ge;di recod goruldu
            //4child js
            5//datatable goster
                .then(result =>{
                    if(result.length >0){
                        this.bookInfo = result;
                        this.error = undefined;
                    }else{
                        this.bookInfo = undefined;
                        this.error = 'There are no matching students for entered postal code. Try using different search';
                        
                    }
                })
                .catch(error => {
                    this.bookInfo= undefined;
                    this.error = error.body.message;
                })
        }
    
    
    
    
    }

