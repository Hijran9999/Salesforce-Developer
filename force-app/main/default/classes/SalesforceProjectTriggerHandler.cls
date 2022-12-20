public class SalesforceProjectTriggerHandler {
    /*public static void createDeafultTicket(list<Salesforce_Project__c> sptriggerNew) {
List<Salesforce_Ticket__c> newList = new List<Salesforce_Ticket__c>();
for(Salesforce_Project__c eachs : sptriggerNew){


    Salesforce_Ticket__c st = new Salesforce_Ticket__c();
st.Subject__c = 'Default ST';
st.Salesforce_Project__c = eachs.id;
newList.add(st);



}


if(!newList.isEmpty()){

    insert newList;

}

    }*/

   /* public static void createDeafultTicket1(list<Salesforce_Project__c> spTriggernew){

List<Salesforce_Ticket__c> stList1 = new List<Salesforce_Ticket__c>();
for(Salesforce_Project__c eachSp : spTriggernew){



    Salesforce_Ticket__c st1 = new Salesforce_Ticket__c();
    st1.Subject__c = 'Default st';
    st1.Salesforce_Project__c = eachSp.id;
    stList1.add(st1);

}

if(!stList1.isEmpty()){
    insert stList1;
}
    }

    public static void validateSpComplete(list<Salesforce_Project__c> spTriggernew,List<Salesforce_Project__c> spTriggerOld,map<id,Salesforce_Project__c> spTriggerNewMap,Map<Id,Salesforce_Project__c> spTriggerOldMap){

set<id> setCompleteProjectIds = new set<id>();

for(Salesforce_Project__c eachsp : spTriggernew){

    if(eachsp.Status__c=='Completed' && eachsp.Status__c!=spTriggerOldMap.get(eachSp.id).Status__c){
setCompleteProjectIds.add(eachSp.Id);
    }
}

//get all not completed tickets of allcompleted project
List<Salesforce_Ticket__c> lList = [select id, status__c,salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in : setCompleteProjectIds and status__c != 'Completed'];
for(Salesforce_Ticket__c spp : lList){
Salesforce_Project__c sppp = spTriggerNewMap.get(spp.Salesforce_Project__c);


    sppp.Status__c.addError('Cannot complete beacsue all tickets are not completed');
}



}*/


public static void validateSpComplete2(List<Salesforce_Project__c>  spTriggernew, List<Salesforce_Project__c> spTriggerOld,map<id,Salesforce_Project__c> spTriggerNewmap, map<id,Salesforce_Project__c> sptriggeroldmap){

set<id> spids = new set<id>();
for(Salesforce_Project__c eacspp : spTriggernew){
if(eacspp.Status__c =='Completed' && eacspp.Status__c != sptriggeroldmap.get(eacspp.id).Status__c){

spids.add(eacspp.id);

}
}

//get all not completed tickets of all completed project

List<Salesforce_Ticket__c> listS = [select id, status__c,Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spids and status__c !='Completed'];
//llop each ticket
//check if project is in set of  completed project.
for(Salesforce_Ticket__c eachOfSt : listS){



    Salesforce_Project__c sp = spTriggerNewmap.get(eachOfSt.Salesforce_Project__c);
    sp.Status__c.addError('cannot complete project becase all tickets are not compleeted');

}
}


    }
