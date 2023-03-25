public with sharing class OpportunityCon {
    @AuraEnabled(cacheable=true) // we want to call in LWC
    public static list<Opportunity> getTopOpportunities(String stage){
       return [SELECT Name, Type, Amount, CloseDate
              FROM Opportunity
              WHERE  StageName =: stage
              AND Amount!=null
              WITH SECURITY_ENFORCED// if they do not have permission please do not display
              // security enforce will ensure you have field level access and object level access--> this is not record level
              // with sharing takes care of record access .
              //  After creteria
              ORDER BY Amount DESC
              LIMIT 5];
    }
}