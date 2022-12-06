public class Soql1VideoRelationship {
   private static void fetchOppsAndAccount() {
List<Opportunity> listOfOpps = [select id, name, amount, stagename, account.id, account.name, account.phone, account.type, account.industry from opportunity where (stageName !='Closed Won' and stageName != 'Closed Lost') ];



system.debug('list og groups ' + listOfOpps);
for(opportunity opp: listOfOpps){

string printString = Opp.name;
printString+= 'amount and stagename of Opportunity is ' + opp.amount + '& ' + opp.stageName;

printString+= ' account name of opp is ' + opp.account.name + '('+ opp.account.phone+ ')';
if(opp.accountid != null){
printString += opp.account.name + '(' + opp.account.phone + ')';
printString += opp.account.industry;




}
system.debug(printString);
}




    }


    public static void generalMethod(){
        fetchOppsAndAccount();
    }
}
