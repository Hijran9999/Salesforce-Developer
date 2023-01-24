public  class ShowTotalAmount {
    public static void showamount(list<account> ids ) {
   List<Opportunity> listop = [select id, name, accountid, amount from Opportunity where AccountId in : ids ];
decimal totalamount = 0;
decimal maxamount = 0;
string maxamountname= '';
for(Opportunity opp : listop){

if(!listop.isEmpty()){
totalamount+=opp.Amount;

}
if(opp.Amount>maxamount){

    maxamount = opp.Amount;
    maxamountname= opp.name;
}

}
system.debug('total amount is ' + totalamount + ' max amountn  is ' + maxamount + ' maxamount name is ' + maxamountname);

    }
}