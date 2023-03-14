public with sharing class EmployeCtr {
   @AuraEnabled
  public static List<Employee__c> searchEmployees(string searchKey){
    searchKey = '%' + searchKey + '%' ;
  return[select Name__c, Designation__c, Email__c from Employee__c where Name__c LIKE : searchKey WITH SECURITY_ENFORCED];
  }
}