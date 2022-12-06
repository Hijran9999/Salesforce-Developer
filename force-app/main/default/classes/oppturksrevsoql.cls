public  class oppturksrevsoql {
    public static void totalAmounts() {
list<Account> lsacc = [select id, name,(select id, name, amount from opportunities) from account];

map<id,decimal> acounttotal = new map<id, decimal>();

for(account eachac : lsacc){
system.debug('fordeposu start');
system.debug('account name is ' + eachac.name);

List<Opportunity> listOp = eachac.Opportunities;
if(!listOp.isEmpty()){
decimal total =0;
for(Opportunity eachopp : listOp){

total += eachopp.Amount;


}
acounttotal.put(eachac.id, total);


}
system.debug(' for loop finish');



}
system.debug('accountlarin  bagli oldgu opprtlrn amount toplamlari map= ' +acounttotal);

    }
}
