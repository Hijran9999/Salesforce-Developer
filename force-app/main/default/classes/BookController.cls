public with sharing class BookController {
    @AuraEnabled
    public static list<Book__c> listBook(string searchkey){

        string searchKeyWord = '%' +searchKey+ '%';
        return [select id, Name,Book_Name__c,Price__c,Sayfa_sayisi__c	from Book__c where   Book_Name__c like : searchKeyWord WITH SECURITY_ENFORCED];
    }
   

}