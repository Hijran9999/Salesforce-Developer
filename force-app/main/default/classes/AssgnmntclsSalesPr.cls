public class AssgnmntclsSalesPr {
   @future 
   private static void (set<id> spids){
List<Salesforce_Project__c> lst = [select id from Salesforce_Project__c where id in : spids];
for(Salesforce_Project__c eaxsp : lst){
    eaxsp.status__c = 'Completed';
    
}
   }
}


@future
public static void updateProjectDescription(set<id> ids){
    system.debug('inside future method. okay??');
List<Salesforce_Project__c> allsps = [select id, description__c from Salesforce_Project__c where id in : ids];
for(Salesforce_Project__c eachsp : allsps){
    eachsp.Description__c+='.. See updated from futureeee.. PPayyy Attentionn...';

}

update allsps;


}