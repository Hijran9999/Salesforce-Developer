trigger CaseTrigger on Case (before insert, after insert,before update,after update) {

//if(trigger.isAfter){

    //if(trigger.isInsert || trigger.isUpdate){
      //  CaseTriggerhandler.printingStatusDetails(trigger.new, trigger.old, trigger.newmap, trigger.oldMap);

   // }


  

   
/*if(trigger.isUpdate){
system.debug('before update trigger run');
Casetrigger3handler.counnTriggerExc++;
system.debug('nece defe qacdi  ' + Casetrigger3handler.counnTriggerExc);
Casetrigger3handler.countRecordsUpdated+=trigger.size;
system.debug('ne qeder record update olunub ' + Casetrigger3handler.countRecordsUpdated);
    //count how many timestrigger runs
}*/







/*if(trigger.isUpdate){


    system.debug('before updatetrigger run');
    Casetrigger3handler.countTriggerExecution++;
    system.debug('ne weder gedib ' + Casetrigger3handler.countTriggerExecution);
    Casetrigger3handler.countrecordsUpdate+=trigger.size;//we do not need paarntes size ele ocusun verir context variable
    system.debug('of total records updated ' + Casetrigger3handler.countrecordsUpdate);
}*/

//system.debug('before insert  case trigger');


  

/*if(trigger.isBefore && trigger.isUpdate){


    CaseTriggerHandler2.caseOriginUpdate(trigger.new, trigger.OldMap);
}

*/


    /*if(trigger.isAfter && trigger.isInsert){



    CaseHandlerClassPresizeVitap.createDefaulttask(trigger.new);
}*/


/*if(trigger.isBefore && trigger.isUpdate){
system.debug('before update trigger called');
}
if(trigger.isAfter && trigger.isUpdate){


    system.debug('after update trigger called');
}

if(trigger.isAfter && trigger.isInsert){

    system.debug('after insert trigger called.');
}
*/


}