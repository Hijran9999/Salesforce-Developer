public with sharing class ContactContrl {
   @AuraEnabled
  public static list<contact> searchContacts(string searchKey){

    searchKey = '%'   + searchKey + '%';
    return [SELECT FirstName,LastName,Title,Email
    FROM Contact
    WHERE FirstName LIKE : searchKey
    OR LastName LIKE : searchKey
    WITH SECURITY_ENFORCED
    LIMIT  10];


  }


}