public  class CreateTaskCaseBatchable implements database.Batchable<SObject> {


    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q1;
        if(!test.isRunningTest()){
            q1 = Database.getQueryLocator([select id, ClosedDate, OwnerId from Case where Status != 'Closed' and  LastModifiedDate < LAST_N_DAYS:5]);
        }else{
            q1 = Database.getQueryLocator([select id, ClosedDate, OwnerId from Case where Status != 'Closed']);
        }

        return q1;

    }
    public void execute(Database.BatchableContext bc, list<Case> scope){
        List<Task> taskList = new List<Task>();
        for(Case c : scope){
            Task tsk = new Task();
            tsk.Subject = system.Label.Subject;
            tsk.Description = system.Label.Comments;
            tsk.WhatId = c.Id;
            tsk.OwnerId = c.OwnerId;
            tsk.Status = 'In Progress';
            
            taskList.add(tsk);
        }

        if(!taskList.isEmpty()){
            insert taskList;
        }
    }
    public void finish(Database.BatchableContext bc){
        system.debug('finish method called');
    }   

/*public database.QueryLocator start(Database.BatchableContext bc){

Database.QueryLocator q1;
if(!test.isRunningTest()){

    q1 = Database.getQueryLocator(['select id,ownerid,closeddate from case where status !='Closed' and lastmodified < LAST_N_DAYS:5']);
}else{

    q1 = Database.getQueryLocator([select id, closedate,ownerid from case where status!='Closed']);
}
return q1;
}
public void execute(Database.BatchableContext bc, list<case> scope){
list<task>tasklist  = new list<task>();
for(case c : scope){

    task tsk = new task();
    tsk.Subject =system.label.Subject;
   
    tsk.Description = system.label.Comments;
tsk.WhatId = c.Id;
tsk.OwnerId = c.OwnerId;
tsk.Status = 'In Progress';
tasklist.add(tsk);
}
if(!tasklist.isEmpty()){

    insert tasklist;
}


}
public void finish(Database.BatchableContext bc){
system.debug('system finish called..');


}*/

}
