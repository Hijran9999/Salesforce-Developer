public  class Queuable12turkishdevasgnm  implements Queueable{
    public static list<account> aclist = [select id, name, annualrevenue from account where annualrevenue = 10000];
public void execute(QueueableContext context){
    system.debug('queble calisti..');
list<contact> conlist = new list<contact>();
if(!aclist.isEmpty()){

    for(account acc : aclist){
        contact c = new contact();
        c.LastName ='Queueble121';
        c.AccountId = acc.id;
        conlist.add(c);
    }
    insert conlist;
     system.enqueueJob(new Queueableturkish());
}






}


}
