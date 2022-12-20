trigger AccountTrigger on Account (before insert,before update, after insert,after update) {
 
   /*if(trigger.isBefore && trigger.isInsert){


    AccountHandlerClassTurkishRevision.method1(trigger.new, trigger.old, trigger.newmap, trigger.oldmap);
   }
   if(trigger.isAfter && trigger.isInsert){

AccountHandlerClassTurkishRevision.method2(trigger.new, trigger.old, trigger.newmap, trigger.oldmap);

   }*/
   /*if(trigger.isAfter && trigger.isUpdate){

AccountTriggerHandler.updateBilingCity(Trigger.New, trigger.Old, Trigger.NewMap,Trigger.OldMap);


   }*/





    /* if(trigger.isAfter && trigger.isUpdate){

        AccountTriggerHandler.updateVIPContacts1(Trigger.New, Trigger.Old, Trigger.NewMap,Trigger.OldMap);
    }*/



    
/*if(trigger.isBefore){

    AccountTriggerhandler.updateaccountDescription(trigger.new, trigger.old, trigger.newMap,trigger.oldMap);
}*/



   /*if(trigger.isBefore){
    system.debug('before insert');
for(account eachac : trigger.new){
boolean updatedesc = false;
if(trigger.isInsert && eachac.Active__c=='Yes'){
    eachac.Description = 'ac is active';
   updatedesc = true;
}
if(trigger.isUpdate){
id accid = eachac.id;
account oldacc = trigger.oldMap.get(eachac.Id);
account newacc = trigger.newMap.get(eachac.id);
if(eachac.Active__c=='Yes' && oldacc.Active__c!=newacc.Active__c){
eachac.Description = 'celebrtae is active ';
system.debug('u did');
updatedesc = true;

}
}
    
}



   }*/
   
}
   
    /*List<account> accTriggerNew = trigger.new;
    List<account> accTriggerOld = trigger.old;
map<id,account> actrnewmap = trigger.newMap;
map<id,account> actrOldmap = trigger.oldmap;

if(trigger.isAfter && trigger.isUpdate){
    set<id> accIds = actrnewmap.keySet();
 
//for each loop of set of ids'.
//idfromnew map get value
//get value of old account map id

for(id eachId : accids){
    system.debug(eachId);
    account newacc = actrnewmap.get(eachId);
    system.debug('name ' + newacc.name);
    string newwebsite = newacc.Website;
    account oldacc = actrOldmap.get(eachId);
    system.debug('old name is ' + oldacc.name);
    string  oldweb = oldacc.Website;
    if(newwebsite!= oldweb){
        system.debug(newacc.name + ',websitei ' + newwebsite);
    }
}

}*/




/*if(trigger.isBefore && trigger.isInsert){//yesbut id no
system.debug('before insert tr new is ' + accTriggerNew);//null
system.debug('before insert tr old is ' + accTriggerOld);//null


    system.debug('new map ' + actrnewmap);
    system.debug('old map is ' + actrOldmap);
}
if(trigger.isAfter && trigger.isInsert){
    system.debug('after insert tr new is ' + accTriggerNew);
    system.debug('After insert tr old is ' + accTriggerOld);
    
    system.debug('new map ' + actrnewmap);
    system.debug('old map is ' + actrOldmap);
}
if(trigger.isBefore && trigger.isUpdate){
    system.debug('before update tr new is ' + accTriggerNew);
    system.debug('before update tr old is ' + accTriggerOld);
    
    system.debug('new map ' + actrnewmap);
    system.debug('old map is ' + actrOldmap);
}
if(trigger.isAfter && trigger.isUpdate){
    system.debug('after update tr new is ' + accTriggerNew);
    system.debug('after update tr old is ' + accTriggerOld);
    
    system.debug('new map ' + actrnewmap);
    system.debug('old map is ' + actrOldmap);
}

*/






/*if(trigger.isBefore && trigger.isInsert){


    system.debug('after insert tr old is ' + trigger.old);
}
if(trigger.isAfter && trigger.isInsert){

    system.debug('after insert tr old is ' + trigger.old);
}if(trigger.isBefore && trigger.isUpdate){

    system.debug('after insert tr old is ' + trigger.old);
}*/

/*if(trigger.isAfter && trigger.isUpdate){

    list<account> acctrOld = trigger.old;
    for(account oldacc : acctrOld){
        system.debug(oldacc.id + ',  ' + ' name is  ' + oldacc.name);
    }
    list<account> trnew = trigger.new;
    for(account newtracc : trnew){


        system.debug('id is' + newtracc.id + ' name is ' + newtracc.name);
    }
}*/



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




