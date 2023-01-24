trigger LeadTrigger on Lead (before insert,after insert) {
  if(trigger.isAfter && trigger.isInsert){


    CaseHandlerClassPresizeVitap.createTaskAndCase(trigger.new);
       }
  
 /* if(trigger.isBefore){
LeadCreateHandler.updateCloseLostdate(trigger.new, trigger.old, trigger.newmap, trigger.Oldmap);



  }*/
  
  
  /*if(trigger.isInsert) { 
    system.debug('start1-----');
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isBefore= ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);

    if(trigger.isAfter){
        system.debug('lead created.. after insert trigger.');
    }
if(trigger.isBefore){
    system.debug('lead creating .. before insert trigger. ');
}

system.debug('--end1---');
  }
if(trigger.isUpdate){
system.debug('====start2==');
system.debug('trigger.isUpdate = ' + trigger.isUpdate);

system.debug('trigger.isBefore= ' + trigger.isBefore);
system.debug('trigger.isAfter = ' + trigger.isAfter);


if(trigger.isAfter){
    system.debug('lead updated .. after insert trigger.');
}
if(trigger.isBefore){
system.debug('lead updating .. before insert trigger. ');
}

system.debug('--end2---');
}*/
}







