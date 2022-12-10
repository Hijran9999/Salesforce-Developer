trigger CaseTrigger on Case (before insert,after insert, before update, after update) {
if(trigger.isBefore && trigger.isInsert){
system.debug('in before insert trigger called.');

}

if(trigger.isBefore && trigger.isUpdate){
system.debug('before update trigger called');
}
if(trigger.isAfter && trigger.isUpdate){


    system.debug('after update trigger called');
}

if(trigger.isAfter && trigger.isInsert){

    system.debug('after insert trigger called.');
}



}