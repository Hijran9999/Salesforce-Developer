trigger AirlineTrigger on Airline2__c (after insert) {
if(trigger.isAfter){
if(trigger.isInsert){
AirlineHandler.afterInsert(trigger.newMap);


}

}
}