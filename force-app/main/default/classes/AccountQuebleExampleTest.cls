@istest
public with sharing class AccountQuebleExampleTest {
   @istest
   private static void testqueble1(){
list<account> lac = new list<account>();
for(integer i=0;i<10;i++){
    account a = new account();
    a.name = 'Pi test ' + i;
    a.Active__c = 'Yes';
    lac.add(a);
}
insert lac;



test.startTest();
system.enqueueJob(new AccountQuebleExample(lac));
test.stopTest();
list<account> gta  = [select id, name from account];
system.assert(gta[0].name.contains(' == Si'));
   }
   /////oz yazdigim
@istest
private static void acquetest(){
   list<account> aclist = new list<account>();

for(integer i=0;i<200; i++){

    account acc = new account();
    acc.name = 'Test yapdim ' +i;
   acc.Active__c = 'Yes';
    aclist.add(acc);
}
insert aclist;
test.startTest();
//AccountQuebleExample aq = new AccountQuebleExample (aclist);

system.enqueueJob(new AccountQuebleExample(aclist) );//directly pass new instance

test.stopTest();

//3assert
list<account> getac = [select id, name from account];
system.assert(getac[0].name.contains(' == SI'));

}

}
