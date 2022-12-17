trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert,before update,after update) {
if(trigger.isAfter && trigger.isInsert){
SalesforceProjectTriggerHandler.createDeafultTicket1(trigger.new);
}

if(trigger.isBefore && trigger.isUpdate){


    SalesforceProjectTriggerHandler.validateSpComplete(Trigger.new, trigger.Old, trigger.NewMap, Trigger.OldMap);
}
}