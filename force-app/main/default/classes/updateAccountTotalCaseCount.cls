public class updateAccountTotalCaseCount {
    @invocableMethod
  public static void m1(list<id> listids){
list<account> lista = [select id, website from account where id in : listids];
for(account ac : lista){
    ac.Website = 'Google.com';
}

update lista;

  }
  
  
  
  
  
  
  
  
  
    /* public static void updateTotalCaseCount(list<ID> listaccountid){
list<AggregateResult> caseAGR = [select count(Id), accountId from case where accountId in : listaccountid group by accountId];


list<account> updateacc = new list<account>();
system.debug('cases AGR = ' + caseAGR);
for(AggregateResult agr : caseAGR){
    system.debug('agr = ' + agr);
    system.debug('ac id agr is ' + agr.get('accountid'));


    integer countOfCases = integer.valueOf(agr.get('caseCount'));
    account acc = new account();
    acc.id = string.valueOf(agr.get('accountid'));
    updateacc.add(acc);
}
system.debug('updateAccounts = ' + updateacc);
 update updateacc;
   }*/
}
