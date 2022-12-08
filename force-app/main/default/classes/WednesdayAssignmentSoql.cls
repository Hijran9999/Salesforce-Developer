public  class WednesdayAssignmentSoql {
    public static decimal AccConAndOppOperations() {
decimal n = 0;

list<Opportunity> opps = [select id, name, amount, stagename from Opportunity where stagename = 'Closed Won' and amount !=null];
for(Opportunity eachOpp : opps){


n= n+ eachOpp.Amount;

}
system.debug(n);

return n;

    }
    
public static list<account> mt1(string stg){
    list<account> listacc = [select Id,name from account where Id IN(select accountId from Opportunity where stagename = :stg)];


system.debug(listacc);

return listacc;

}




/*List<Account> accountsList = new List<Account>();
         List<opportunity> listOpp=[Select AccountId from opportunity Where StageName = 'Closed Won'and accountId!=null];
         set<id> listId=new set<id>();
         for (opportunity opp : listOpp) {
            listId.add(opp.accountId);
        }
         accountsList = [Select Id, Name from Account Where Id In :listId];
        system.debug(listId);
         System.debug('accountsList  '+accountsList.size());*/


public static list<account> method2(){

list<account> lisaccc = [select id ,name from account where Id IN (select accountId from contact)];





system.debug(lisaccc);
return lisaccc;
}
public static contact method1( id AccountId){

account acc = [select id, name from account where Id = :accountId];
contact con = new contact();
if(accountId !=null){
con.LastName = acc.name;
con.AccountId = acc.id;
insert con;


}
return con;
}
}