trigger AccountTrigger2 on Account (before insert, before update) {
system.debug('account before insert trigger called');
system.debug('account after update trigger called');


/*
if(Trigger.isBefore){

    system.debug('before insert trigger');
}
    if(Trigger.isAfter){
        system.debug('after insert trigger');
    }*/
}
