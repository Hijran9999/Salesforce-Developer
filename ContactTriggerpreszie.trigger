trigger ContactTriggerpreszie on Contact (before insert,before update, after insert, after update) {
/*if(trigger.isBefore && trigger.isInsert){

   system.debug('==beforeinsert ==');
   system.debug('tr new is ' + trigger.new);
   system.debug('tr old is ' + trigger.old);

}
if(trigger.isAfter && trigger.isInsert){

    system.debug('==after insert ==');
    system.debug('tr new is ' + trigger.new);
   system.debug('tr old is ' + trigger.old);

 }
 if(trigger.isBefore && trigger.isUpdate){

    system.debug('==before update  ==');
    system.debug('tr new is ' + trigger.new);
   system.debug('tr old is ' + trigger.old);

 }
 if(trigger.isAfter && trigger.isUpdate){

    system.debug('==after update  ==');
    system.debug('tr new is ' + trigger.new);
   system.debug('tr old is ' + trigger.old);

 }*/

 /*if(trigger.isAfter && trigger.isUpdate){

    system.debug('==after update  ==');
    system.debug('tr new is ' + trigger.new);
   system.debug('tr old is ' + trigger.old);
   list<contact> newC = trigger.new;
   list<contact> oldC = trigger.old;
for(contact eachC : newC){
    for(contact eachOld : oldC){
        if(eachC.id == eachOld.id){
            if(eachC.lastname != eachOld.lastname){
                system.debug('existing old lastname last name is (old) :' +eachOld.LastName);
                system.debug('updated last name is (new) :' +eachC.LastName);

            }else{
                system.debug('last name is not changed . ');olmaz eleme
            }
        }

}
}
}*/
}