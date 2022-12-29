public class SalesforceProjectTriggerHandler {
    public static void createDeafultTicket(list<Salesforce_Project__c> sptriggerNew) {
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

    }

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

/*@future
public static void updateProjectDescription(set<id> ids){
system.debug('inside future method. okay?');
list<Salesforce_Project__c> allsp = [select id, description__c from Salesforce_Project__c where id in : ids ];
for(Salesforce_Project__c eachsp : allsp){

    eachsp.Description__c +='updated from future';
}
update allsp;
}

public static void  spupdate(List<Salesforce_Project__c> sptrnew, list<Salesforce_Project__c> sptrold, Map<Id,Salesforce_Project__c> spnewmap,  map<id,Salesforce_Project__c> oltrmapsp ){
set<id> spids = new set<id>();
for(Salesforce_Project__c eacsp : sptrnew){
    if(eacsp.Status__c=='Completed' && eacsp.Status__c!=oltrmapsp.get(eacsp.id).Status__c){

spids.add(eacsp.id);

    }
}
if(!spids.isEmpty()){
    completeAllTickets(spids);
}

}
@future
public static void completeAllTickets(set<id> spids){


         //get all tickets which are not completed
         List<Salesforce_Ticket__c> allST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
         where Salesforce_Project__c in :spIds and status__c != 'Completed'];
         // set status as completed
         for (salesforce_ticket__c eachST : allST) {
             eachST.status__c = 'Completed';
         }
         update allST;
        //update all tickets
    }*/

@future
public static void updateProjectDescription(set<id> ids){
    system.debug('inside future method. okay??');
List<Salesforce_Project__c> allsps = [select id, description__c from Salesforce_Project__c where id in : ids];
for(Salesforce_Project__c eachsp : allsps){
    eachsp.Description__c+='.. See updated from futureeee.. PPayyy Attentionn...';

}

update allsps;


}
public static void spUpdateTicketStatus(List<Salesforce_Project__c> sptrnew, list<Salesforce_Project__c> sptrold, Map<Id,Salesforce_Project__c> spnewmap,  map<id,Salesforce_Project__c> troldmap){
    //get set id for which project status  is changed to completed..
//compare old and new
//call future method to update all its tickets
//call b

set<id> spids = new set<id>();
for(Salesforce_Project__c eachsp : sptrnew){
    Salesforce_Project__c oldsp = troldmap.get(eachSp.id);
    if(eachsp.Status__c == 'Completed' && eachsp.status__c!=oldsp.status__c){
        spids.add(eachSp.id);



    }
}
if(!spids.isEmpty()){
    completeAllTickets(spids);
}
}
//b
@future
private static void completeAllTickets(set<id> spids){
    //get all tickets
    //set status as completed 
//update all the tickets..

List<Salesforce_Ticket__c> allst = [select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in : spids and status__c !='Completed'];
for(Salesforce_Ticket__c    eacst : allst){

    eacst.Status__c = 'Completed';
}
update allst;
}
}




