public class BatchOpportunityApex implements Database.Batchable<SObject>,Database.stateful {
    public integer count = 0;
    
    public Database.QueryLocator start(Database.BatchableContext bc){

      
Database.QueryLocator q1 = database.getQueryLocator([select id, stagename from Opportunity where stagename ='Closed Lost' ]);

return q1;   

    }
    public void execute(Database.BatchableContext bc, list<Opportunity> scope){
        count+=scope.size();
if(!scope.isEmpty()){
    delete scope;
}

    }
    public void finish(Database.BatchableContext bc){

        system.debug('execute calisdi.. count defa ');
        system.debug(count + ' count kadar opp silindi');


    }
}


//bathjsfd hj = ne jfkjsdk();
//Database.executebatch(hj,18);
