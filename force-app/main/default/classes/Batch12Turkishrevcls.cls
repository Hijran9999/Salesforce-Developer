public  class Batch12Turkishrevcls  implements database.Batchable<SObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
Database.QueryLocator q1 = Database.getQueryLocator([select id, name, annualrevenue from account]);
return q1;


    }
    public void execute(Database.BatchableContext bc,list<account> scope){
list<account> updadeaccs = new list<account>();
for(account acc : scope){
//if(acc.name.length<30){
    //acc.name += ' update'
//}40 karakter alir name fieldi bu hataya engel olmak icin if kullanilabilir
    acc.Name+=' update';
    if(acc.AnnualRevenue==null){
        acc.AnnualRevenue = 10000;
    }
    updadeaccs.add(acc);
}
update updadeaccs;

    }
    public void finish(Database.BatchableContext bc){
system.debug('islem bitti...');
id jobid = system.enqueueJob(new  Queuable12turkishdevasgnm ());
// Queuable12turkishdevasgnm  b = new  Queuable12turkishdevasgnm ();
//id jobid = system.enueblejob(b);
//batchin icinde queuble yapmis oldukk.. batch ac alir update edir annual revenuenu 10000 edir finside queni cagrg  annualrev cagrir her birine bir contcat baglyb kontakt isert edir
    }
}
