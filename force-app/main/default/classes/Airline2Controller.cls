public with sharing class Airline2Controller {
   @AuraEnabled
   public static List<Airline2__c> getAirilineCountries(string searchKey){
    searchKey = '%' + searchKey + '%';
    return [select Name__c, Country__c, Establish__c, Logo__c from Airline2__c where Name__c Like : searchKey];

   }

}