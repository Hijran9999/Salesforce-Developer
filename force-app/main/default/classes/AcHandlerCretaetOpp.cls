public with sharing class AcHandlerCretaetOpp {
public static void updateTotalAmount(List<Opportunity> trnew){


    set<Id> acid = new set<Id>();

    for(Opportunity opp : trnew){

        acid.add(opp.id);
    }



    List<Account> listac = [select Id, name, Total_Amount__c,(select id, name, amount from Opportunities) from  Account where Id In :acid];
    Decimal amount = 0;
    for(account ac : listac){

      
        for(Opportunity ops : ac.Opportunities){

        amount+=ops.Amount;
        
        }
         
        ac.Total_Amount__c = amount;
    }
    
    try{
        update listac;
    }catch(Exception ex){

        //create a log 

    }
}

public static void createOPP(List<Account> trnew){
 List<Opportunity> listop = new list<Opportunity>();
   for(Account ac : trnew){
    

    Opportunity op = new Opportunity();
    op.Name = 'Op name';
    op.CloseDate = Date.today();
    op.AccountId = ac.id;

    listop.add(op);
   }
    
try{
    insert listop;
}catch(exception ex){
system.debug(ex.getMessage());

}
}
}