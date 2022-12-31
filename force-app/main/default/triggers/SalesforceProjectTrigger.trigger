trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert,before update,after update) {
if(trigger.isAfter && trigger.isInsert){
SalesforceProjectTriggerHandler.createDeafultTicket(trigger.new);
//system.debug('calling f method.. now');
//Map<Id,Salesforce_Project__c> spnewmap = trigger.newmap;
//map<id, Salesforce_Project__c> spnewmap = trigger.newMap;
//SalesforceProjectTriggerHandler.updateProjectDescription(spNewmap.keyset());//keysetle idleri cagiririq...

//SalesforceProjectTriggerHandler.updateProjectDescription();
//system.debug('calling f method done');


}

if(trigger.isBefore && trigger.isUpdate){


    SalesforceProjectTriggerHandler.validateSpComplete2(Trigger.new, trigger.Old, trigger.NewMap, Trigger.OldMap);
}
//if(trigger.isAfter && trigger.isUpdate){
// SalesforceProjectTriggerHandler.spUpdateTicketStatus(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
//}


/*if(trigger.isAfter && trigger.isUpdate){


SalesforceObjectHandlerclasdevasgn.method1(trigger.new,trigger.newMap,trigger.oldMap);

}*/



}