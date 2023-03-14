public with sharing class LeadControl {
 @AuraEnabled
public static list<Lead> getLeads(){
    return [select FirstName, LastName, Title, Company from Lead order by CreatedDate DESC limit 5 ];
}
}