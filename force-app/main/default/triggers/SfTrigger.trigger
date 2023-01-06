trigger SfTrigger on Salesforce_Project__c (before insert,after insert, before update, after update) {

if(trigger.isAfter && trigger.isUpdate){

    SFTicketFuture.m1(trigger.new);
}

}