trigger AccountTrigger on Account (before insert,before update, after insert,after update) {
  /*list<account>  Acc = trigger.new;
   if(trigger.isAfter && trigger.isInsert){
    system.debug('record in after insert ' + trigger.new);
    system.debug('of records inserted : ' + Acc.size() );
   for(account eachAcc : acc){

system.debug('id is ' + eachAcc.id + ' , name is' + eachAcc.name);


   }
   }
   if(trigger.isAfter && Trigger.isInsert){
    system.debug('after record in after insert : ' + acc);
    system.debug('after of records # inserted ' + acc.size());
   }
   
   for(account eachacc : acc){



    system.debug('after acc id is ' + eachacc.id + ' , name is ' + eachacc.name);
   }
   
   
   
   
   
   
   if (Trigger.isBefore && Trigger.isUpdate) {
    system.debug('BEFORE record in after Update : ' + acc);
    system.debug('BEFORE # of records Update : ' +acc.size());
    for (account eachAcc : acc) {
        system.debug('BEFORE Update acc id is ' + eachacc.id + ', acc name is ' + eachacc.Name);
    }
}

if (Trigger.isAfter && Trigger.isUpdate) {
    system.debug('After record in after Update : ' + acc);
    system.debug('After # of records Update : ' + acc.size());
    for (account eachAcc : acc) {
        system.debug('After Update acc id is ' + eachacc.id + ', acc name is ' + eachacc.Name);
    }
}
*/
/*
if (Trigger.isBefore && Trigger.isInsert) {
    system.debug('account Before Insert trigger called.');
}
if (Trigger.isAfter && Trigger.isInsert) {
    system.debug('account After Insert trigggger called. yeah');
}
if (Trigger.isBefore && Trigger.isUpdate) {
    system.debug('account Before Update trigger called.');
}
if (Trigger.isAfter && Trigger.isUpdate) {
    system.debug('account After Update trigggger called. yeah');
}
*/

/*
//when we insert record - trigger.isinsert will be true.
if (Trigger.isInsert) {
    system.debug('account before insert trigger called');    
}
//when we update record - trigger.isUpdate will be true.
if (Trigger.isUpdate) {
    system.debug('account before update trigger called');    
}*/


/*
if (Trigger.isBefore) {
    system.debug('account before insert trigger called');
}
if (Trigger.isAfter) {
    system.debug('account after insert trigger called');
}*/


}
   
   
   
   
   
   
   
   
    /*if(trigger.isBefore && trigger.isInsert) {


    system.debug('account before insert trigger called');
   }
    
    
    if(trigger.isAfter && trigger.isInsert){

system.debug('account after insert called triger');

    }
    if(trigger.isBefore && trigger.isUpdate){

        system.debug('ac before update trigger called');

    }
    
    
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('ac after update trigger called');
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*if(trigger.isInsert){
        system.debug('account before insert trigger  called');
    }if(trigger.isUpdate){


        system.debug('account before update   trigger called');
    }*/




