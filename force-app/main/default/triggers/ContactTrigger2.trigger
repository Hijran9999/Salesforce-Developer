trigger ContactTrigger2 on Contact (before insert,after insert,before update,after update) {
/*if(trigger.isBefore && trigger.isInsert){

system.debug('tr new is ' + trigger.new);
system.debug('tr old is ' + trigger.old);
system.debug('tr newmap is ' + trigger.newMap);
system.debug('tr oldmap is ' + trigger.oldMap);



}

if(trigger.isAfter&& trigger.isInsert){

    system.debug('tr new is ' + trigger.new);
    system.debug('tr old is ' + trigger.old);
    system.debug('tr newmap is ' + trigger.newMap);
    system.debug('tr oldmap is ' + trigger.oldMap);
    
    

}
if(trigger.isBefore && trigger.isUpdate){

    system.debug('tr new is ' + trigger.new);
    system.debug('tr old is ' + trigger.old);
    system.debug('tr newmap is ' + trigger.newMap);
    system.debug('tr oldmap is ' + trigger.oldMap);
    
    
}*/
/*if(trigger.isAfter&& trigger.isUpdate){

    system.debug('tr new is ' + trigger.new);
    system.debug('tr old is ' + trigger.old);
    system.debug('tr newmap is ' + trigger.newMap);
    system.debug('tr oldmap is ' + trigger.oldMap);
    
}    


list<contact> newC = trigger.new;
list<contact> oldc = trigger.old;

map<id, contact> newMapC = trigger.newMap;
map<id, contact> oldMapC = trigger.oldMap;

for(contact eachnewcon : newC){
string printst = 'new last anme is ' + eachnewcon.LastName;//teze yaranan snew contact

printSt += 'old last anme is = ' + trigger.oldMap.get(eachnewcon.id).LastName;
system.debug(printSt);

}
*/


}