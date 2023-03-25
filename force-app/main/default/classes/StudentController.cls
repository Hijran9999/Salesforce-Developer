public with sharing class StudentController {
   @AuraEnabled
 public static list<Student1__c> searchStudentsByPostalCode(string searchKey){
 
    string searchKeyWord = '%' +searchKey+ '%';
      return [select id, Name,Student_Name__c,Postal_Code__c,Mobile__c,	Email__c,Class__c from Student1__c where Postal_Code__c like : searchKeyWord WITH SECURITY_ENFORCED];

 }
}