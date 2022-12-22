trigger AssetTrigger on Asset (before insert,after insert) {
integer count=0;
if(trigger.isAfter){

    AssetTriggerhandler.countTriggerRan++;
    AssetTriggerhandler.numberOfRecordsInserted+=trigger.size;//method deyil
    system.debug('trigger called');
    system.debug('trigger ran count = ' + AssetTriggerhandler.countTriggerRan);
    system.debug('number of records inserted =  ' + AssetTriggerhandler.numberOfRecordsInserted);

}
}