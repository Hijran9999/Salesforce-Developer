public  class sil {
    public static void m1() {
List<Opportunity> listop = [SELECT Id, AccountId, StageName, Amount, account.name,account.type, account.industry FROM Opportunity where stagename !='Closed Won' and stagename != 'Closed Lost'];


system.debug('listof opp is ' + listop);


for(Opportunity eachopp : listop){
system.debug(eachopp);
system.debug(eachopp.name + ' , ' + eachopp.Amount + ' & ' + eachopp.StageName);

if(eachopp.AccountId !=null){

    system.debug(' bu oportn bagli oldugu account ' + eachopp.Account.name + ' , ' + eachopp.account.phone + ' , ' + eachopp.Account.Industry);
}else{
    system.debug('bu opp acnt bagli deyl');
}






}
    }
}
