public with sharing class EmployeeController {
    @AuraEnabled(cacheable=true)
    public static List<Employee__c> topFiveEmp(){


         return [select Id, Name__c, Email__c,Designation__c,username__c from Employee__c ORDER BY CreatedDate DESC limit 5 ];
    }


    @AuraEnabled

    public static List<Employee__c> getEmpl(string searchKey){
        searchKey = '%' + searchKey + '%';
        return [select Name__c, Designation__c, Email__c from Employee__c where Name__c LIKE: searchKey];

    }
}