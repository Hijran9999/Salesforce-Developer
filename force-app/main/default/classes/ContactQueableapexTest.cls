@istest
public  class ContactQueableapexTest {
    @istest
   private static void executetest(){
list<account> lisac = new list<account>();
for(integer i=0; i<200; i++ ){

    account accc = new account();
    accc.name = 'ac name ' +i;
    lisac.add(accc);
}
insert lisac;

test.startTest();

ContactQueableapex con = new ContactQueableapex(lisac);
system.enqueueJob(con);
test.stopTest();

list<contact> conliste = [select id, lastname,accountid from contact];
system.assertEquals('Mery Doee', conliste[0].LastName);
   }
}
