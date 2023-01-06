 public class BatchApextask  implements Database.Batchable<SObject>,Database.stateful {
        public Database.QueryLocator start(Database.BatchableContext bc){
    
          
    Database.QueryLocator q1 = database.getQueryLocator([select id, stagename, ownerid,closedate from Opportunity where stagename!='Closed Won' and stagename !='Closed Lost' and LastModifiedDate< LAST_N_DAYS:7]);
    
    return q1;   
    
        }
        public void execute(Database.BatchableContext bc, list<Opportunity> scope){
    list<task> tasklist = new list<task>();
    for(Opportunity op : scope ){
    task tsk = new task();
    tsk.Subject = 'Other';
    tsk.ActivityDate = op.CloseDate.addDays(-2);
    tsk.Description = 'Reminder – Please take action on the Opportunity';
    tsk.WhatId = op.id;
    tsk.OwnerId = op.OwnerId;
    tsk.Status = 'In Progress';
    tasklist.add(tsk);

    }
    if(!tasklist.isEmpty()){

        insert tasklist;
    }
   
        }
        public void finish(Database.BatchableContext bc){
    
            system.debug('execute calisdi.. count defa ');
    
    
        }
    }


    //bathjsfd hj = ne jfkjsdk();
    //Database.executebatch(hj,18);