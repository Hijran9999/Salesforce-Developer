trigger AccountTriggerTurkishRevision on Account (before insert,after insert,before update,after update) {
        System.debug('=========trigger tetiklendi..============');
        //insert durumunda bu mesaj kac defa gelir.
        /*System.debug('trigger.isBefore => ' + trigger.isBefore);
        System.debug('trigger.isAfter => ' + trigger.isAfter);
        System.debug('trigger.isInsert => ' + trigger.isInsert);
        System.debug('trigger.isUpdate => ' + trigger.isUpdate);*/
        /*if(trigger.isBefore && trigger.isInsert){
            system.debug('Before durumunda bu kod calisir..');
            list<account> triggerNew = trigger.new;
            system.debug('new one ' + trigger.new);


            for(account eachac : triggerNew){

                system.debug(eachac.name);
                system.debug(eachac.id);
            }
        }
        if(trigger.isAfter && trigger.isInsert){
            system.debug('after insert durumnda calsr');
            system.debug('tr new ' + trigger.new);
            for(account eachac : trigger.New){

                system.debug(eachac.name);
                system.debug(eachac.id);
            }
        }*/
        
        //if(trigger.isAfter && trigger.isUpdate){
           // system.debug('After durumunda bu kod calisir..');
        //}



       /* if(trigger.isInsert){
system.debug('insrtde calsi tr');


        }
        if(trigger.isUpdate){


            system.debug('update durumnda calsrr');
        }
        System.debug('========= triggerin calismasi bitti=======');*/
    
    }
