public with sharing class AccountrHandlerBalahocaIntervQues {

    public static void updateAccAndCasePriority(List<Account> trnew, List<Account> trold, Map<Id,Account> oldmap){

 set<id> acids = new set<id>();
for(account ac : trnew){

    if(ac.Rating!=oldmap.get(ac.id).Rating){
acids.add(ac.id);

    }
}

list<case> listCase  = [select id, accountId, priority from case where AccountId IN : acids];


for(case c : listCase){
    c.Priority = 'High';
}

update listCase;
    }
}