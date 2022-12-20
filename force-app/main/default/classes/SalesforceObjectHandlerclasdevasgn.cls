public class SalesforceObjectHandlerclasdevasgn {
    //Write trigger on Salesforce Project Object. 
    //2.When Salesforce Project status is completed. Then query all salesforce tickets which is not completed(status). update
    //3.Make Salesforce Ticket status completed.
   
   
   
    public static void method1(List<Salesforce_Project__c> ltriggernew, map<id,Salesforce_Project__c> triggeroldMap, Map<Id,Salesforce_Project__c> triggernewMap ) {
set<id> ids = new set<id>();
for(Salesforce_Project__c sp : ltriggernew){

    if(sp.Status__c=='Completed' && sp.Status__c!=triggeroldmap.get(sp.id).status__c){

ids.add(sp.id);
    }
}


List<Salesforce_Ticket__c> stList =[select id, name, Salesforce_Project__c, status__c from Salesforce_Ticket__c where Salesforce_Project__c   in : ids  and status__c!='Completed'];
if(!stList.isEmpty()){
    for(Salesforce_Ticket__c spp : stList){


        spp.Status__c = 'Completed';
    }
}

update stList;

    }
}
