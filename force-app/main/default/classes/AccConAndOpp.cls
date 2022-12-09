

//. Take account Id as input parameter and create a new contact for the provided account’s Id.
//Populate Contact last name as same as Account’s Name.

public class AccConAndOpp {
    public static void m1(id  Id) {
account acc = [select id, name from account where id = :Id];
contact cn = new contact();
cn.AccountId = acc.id;
cn.LastName = acc.name;
insert cn;
    }
//2. Update the description field of top 10 opportunities as "This is one of the top 10 opportunities.
//Please work on this properly “.
public static void updateDescription(){
    List<Opportunity> listOpp =[select id, name, amount, description from Opportunity order by  amount desc limit 10];

for(Opportunity eachOpp : listOpp){
eachOpp.Description= 'This is one of the top 10 opportunities ';


}
update listOpp;

}
/*Write a logic to create and return n number of opportunities for a particular AccountId.
AccountId and n will be passed as parameters in the method.
Populate opportunity fields as follows:
Close date as 3 years from today
Stage name as Prospecting
Opportunity amount as Account’s annual revenue divided by n
and Opportunity name same as Account name
For Ex: if n=2, Then two new opportunities If n=0, Print the message as “Please tell us how many
opportunities needs to be created”*/

public static list<Opportunity> nNumOfOpp(integer n, id accid){
    List<Opportunity> listopp = new List<Opportunity>();
    account acid = [select id, name, annualRevenue from account where id = :accid];
date bugun = date.today().addYears(3);//bunu burda yartadm getirmesemde olurdu
//string stageName = 'Prospecting';ikinci yol
if(n>0){
for(integer i =0; i<n; i++){
Opportunity opp = new Opportunity();

opp.CloseDate= bugun;//ikinci yol
opp.StageName = 'Prospecting';//birinci yol
if(acid.AnnualRevenue!=null){
opp.Amount = acid.AnnualRevenue/n;//1000000 bol2 50000 olsun her birine  5 yere bolsek 200000 dusur.
}
opp.name = acid.name;
opp.AccountId = acid.id;
listopp.add(opp);
}

if(!listopp.isEmpty()){

    insert listopp;
}


}

return listopp;


}
/*.
4. Find out all the Account which have no contacts attached to them. Add a contact for each one of
them and update the last Name of contact with the Name field of account.
5. Delete all the opportunities with amount less than 20000 and status as closed lost.*/
public static void createContact(){
list<account> listacc = [select id, name from account where  id NOT IN (select accountId from contact)];//contactalrain icinde id yok listenin
list<contact> conlist = new list<contact>();
for( account eachacc : listacc){

contact con = new contact();//instance insertde olurrrrrr
con.LastName = eachacc.name;
con.AccountId = eachacc.id;

conlist.add(con);



}
if(!conlist.isEmpty()){


    insert conlist;
}


}



}

