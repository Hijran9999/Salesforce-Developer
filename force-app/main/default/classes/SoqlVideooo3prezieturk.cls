public class SoqlVideooo3prezieturk {
    public static void fetchOppAndAccount() {
List<Opportunity> listOfOpp = [SELECT Id, Name, StageName, Amount, AccountId, account.name, account.type, account.phone, account.industry FROM Opportunity where stageName != 'Closed Won' and stageName != 'Closed lost'];
system.debug('list of opps = ' + listOfOpp);
for(Opportunity opp : listOfOpp){
system.debug(opp);

system.debug('opp name is ' + opp.name + ', amount and stage name of opp is ' +  opp.Amount + ' & ' + opp.StageName);
if(opp.AccountId != null){

    system.debug(' bu oportn bagli oldugu account ' + opp.Account.Name + ' ' + opp.Account.Phone + ' ' + Account.industry);

}else{
    system.debug( ' bura bagli deyil');
}




}


    }
}
