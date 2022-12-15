trigger AccountTrigger4 on Account (before insert,after insert,before update,after update) {

if(trigger.isBefore && trigger.isUpdate){

AccountTriggerHandlerClass2.updaterevenue(trigger.new, trigger.oldMap);
}




/*if(trigger.isBefore && trigger.isInsert){
system.debug('==before insert==');
system.debug('tr new is ' + trigger.new);
system.debug('tr old is ' + trigger.old);
system.debug('tr new map is ' + trigger.newMap);
system.debug('tr old map is ' + trigger.oldMap);
}

if(trigger.isAfter && trigger.isInsert){*/


    /*system.debug('===after insert ===');
    system.debug('tr new is ' + trigger.new);
    system.debug('tr old is ' + trigger.old);
    system.debug('tr new map is ' + trigger.newMap);
    system.debug('tr old map is ' + trigger.oldMap);
}
if(trigger.isBefore && trigger.isUpdate){

    system.debug('==before update==');
    system.debug('tr new  is ' + trigger.new);
    system.debug('tr old is ' + trigger.old);
    system.debug('tr new map is ' + trigger.newMap);
    system.debug('tr old map is ' + trigger.oldMap);

}
if(trigger.isAfter && trigger.isUpdate){
system.debug('==after update==');
system.debug('tr new is ' + trigger.new);
system.debug('tr old is ' + trigger.old);
system.debug('tr new map is ' + trigger.newMap);
system.debug('tr old map is ' + trigger.oldMap);
}*/
/*if(trigger.isBefore && trigger.isInsert){
system.debug('==before insert==');



system.debug('tr new is ' + trigger.new);
system.debug('tr old is ' + trigger.old);
system.debug('tr new map is ' + trigger.newMap);
system.debug('tr old map is ' + trigger.oldMap);

map<id,account> actrnewmap = trigger.newMap;
map<id,account> actrOldMap = trigger.oldMap;

for(id eachid : actrnewmap){
system.debug('name ' + eachid.name);


}


}
if(trigger.isBefore && trigger.isUpdate){
    system.debug('==before update==');
    system.debug('tr new is ' + trigger.new);
    system.debug('tr old is ' + trigger.old);
    system.debug('tr new map is ' + trigger.newMap);
    system.debug('tr old map is ' + trigger.oldMap);
    
    map<id,account> actrnewmap = trigger.newMap;
    map<id,account> actrOldMap = trigger.oldMap;

    system.debug('new old name is ' + actrOldMap.name);
    system.debug('new acc name is ' + actrNewMap.name);

    
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('==before update==');
        system.debug('tr new is ' + trigger.new);
        system.debug('tr old is ' + trigger.old);
        system.debug('tr new map is ' + trigger.newMap);
        system.debug('tr old map is ' + trigger.oldMap);
        
        map<id,account> actrnewmap = trigger.newMap;
        map<id,account> actrOldMap = trigger.oldMap;
        for(id  eachid : actrnewmap.id){
            system.debug(eachid);
            account newacc = actrnewmap.get(eachid);
            
            system.debug('name is ' + newacc.name);
            
            
            }
            


    }

    if(trigger.isAfter && trigger.isUpdate){
        system.debug('==before update==');
        system.debug('tr new is ' + trigger.new);
        system.debug('tr old is ' + trigger.old);
        system.debug('tr new map is ' + trigger.newMap);
        system.debug('tr old map is ' + trigger.oldMap);
        
        map<id,account> actrnewmap = trigger.newMap;
        map<id,account> actrOldMap = trigger.oldMap;
        for(id  eachid : actrnewmap.id){
            system.debug(eachid);

            account newacc = actrnewmap.get(eachid);
            system.debug('name is ' + newacc.name);

            account oldacc = actrOldMap.get(eachid);
            system.debug('name is ' + oldacc.name);
            
        }




}*/

//

//for each loop of set of ids'.
//idfromnew map get value
//get value of old account map id*/

/*for(id eachId : accids){
    system.debug(eachId);
    account newacc = actrnewmap.get(eachId);
    system.debug('name ' + newacc.name);
    string newwebsite = newacc.Website;
    account oldacc = actrOldmap.get(eachId);
    system.debug('old name is ' + oldacc.name);
    string  oldweb = oldacc.Website;
    if(newwebsite!= oldweb){
        system.debug(newacc.name + ',websitei ' + newwebsite);
    }*/
    //burdan ac ev tap


    /* burdan ev tap
    list<account> acctriggernew = trigger.new;
    list<account> acctriggerOld = trigger.old;

    map<id, account> accNewMAp = trigger.NewMap;
    map<id, Account> accOldMap = trigger.oldMap;

    if(trigger.isBefore && trigger.isInsert){
        system.debug('before insert ==>');
        system.debug('Trigger.new before insert'+ trigger.new);
        system.debug('trigegr .old before insert' + trigger.old);
        system.debug('before insert newmap ==>' + trigger.newMap);
        system.debug('before insert oldmap ==>' + trigger.oldMap);
        
       }
    
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after insert===>');
        system.debug('Trigger.new after insert'+ trigger.new);
        system.debug('Trigger.old  after insert' + trigger.old);
        system.debug('after insert newmap ==>' + trigger.newMap);
        system.debug('after insert oldmap ==>' + trigger.oldMap);
        set<id> newacc = accNewMAp.keySet();
        for ( id eachId : newacc ){
            system.debug('id is ==>' + eachId);
            account newAc = accNewMAp.get(eachId);
            system.debug('id is ' + newac );
            }
    
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('before update');
        system.debug('Trigger.new before update'+ trigger.new);
        system.debug('Trigger.old before update'+ trigger.old);
        system.debug('before update newmap ==>' + trigger.newMap);
        system.debug('before after oldmap ==>' + trigger.oldMap);
   set<id> setids = accNewMAp.keySet();

       for(Id eachId :setids){
        system.debug('id is new id' + eachId);
        Account newAcc = accNewMAp.get(eachId);
        system.debug('NEw acc name is ==>' + newAcc.Name);
        Account oldAcc =  accOldMap.get(eachId);
        system.debug('old accname is ' + oldAcc.Name);
       }
    
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after update');
        system.debug('Trigger.new after update '+ trigger.new);
        system.debug('Trigger.old  after update ' + trigger.old);
        system.debug('after update newmap ==>' + trigger.newMap);
        system.debug('after update oldmap ==>' + trigger.oldMap);
        for( Id eachId :accNewMAp.keySet() ){
            Account newAcc = accNewMap.get(eachid);
            system.debug('new acc record account from new map' + newacc);
            Account oldAcc = accOldMap.get(eachId);
            system.debug('old acc from old map ' + oldAcc);   
        }

    }*/

    /*
if(trigger.isAfter && trigger.isUpdate){


    for(account oldac :  trigger.old){
        system.debug('old ac id is ' + oldac.id + ' oldac name is ' + oldac.Name);
    }
    for(account newac : trigger.new){
system.debug('new ac name is ' + newac.id + ' new ac name is ' + newac.name);


    }
}
list<account> acctriggernew = trigger.new;
list<account> acctriggerOld = trigger.old;
map<id, account> actrNewmap = trigger.newMap;
map<id, account> actrOldmap = trigger.oldMap;
if(trigger.isBefore && trigger.isInsert){
system.debug('before insert tr new is ' + trigger.new);
system.debug('before insert tr old is ' + trigger.old);
system.debug(' before inssert tr new map ' + actrNewmap);
system.debug(' before inssert tr old map ' + actrOldmap);
}

if(trigger.isAfter && trigger.isInsert){
    system.debug('after insert tr new is ' + trigger.new);
    system.debug('after insert tr old is ' + trigger.old);
    system.debug(' after insert tr new map ' + actrNewmap);
    system.debug(' after insert tr old map ' + actrOldmap);
    }
    
if(trigger.isBefore && trigger.isUpdate){
    system.debug('before update  tr new is ' + trigger.new);
     system.debug('before update tr old is ' + trigger.old);
   system.debug(' before update tr new map ' + actrNewmap);
        system.debug(' before update tr old map ' + actrOldmap);
        }
if(trigger.isAfter && trigger.isUpdate){
    system.debug('after update tr new is ' + trigger.new);
    system.debug('after updatetr old is ' + trigger.old);
    system.debug(' after update tr new map ' + actrNewmap);
    system.debug(' after update tr old map ' + actrOldmap);
  }*/
      


}


