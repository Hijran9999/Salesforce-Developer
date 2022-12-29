@istest
public with sharing class Batch12demotest {
    @istest
    private static void printWelcomeTest(){
        Batch12Demo.printWelcome();
    }
    @istest
    private static void welcomePersonTest(){
        Batch12Demo.welcomePerson('Hiji');
    }
    @istest
private static void toplamaTest(){
integer a  = batch12Demo.toplama(3, 8);

system.assertEquals(11, a);

}

/*@istest
    private static void createAccountTest() {
        Batch12Demo.createAccount();
        List<Account> accList = [select id, name from account where name = 'Test'];
        system.assert(accList.size()>0);
        system.assertEquals(1, accList.size());
        system.assertEquals('Test', accList[0].name);
    }*/
@istest
private static void createAccountTest(){
    Batch12Demo.createAccount();
List<Account> aclist = [select id, name from account where name = 'Test'];
//system.assert(aclist.size()>0);

system.assertEquals(1,aclist.size());
//system.assertEquals('Test', aclist[0].name);
}
@istest

private static void updateaccountTest(){
account ac = new account();
ac.name = 'Salesforce';
insert ac;
Batch12Demo.updateAcc();
account acc  = [select id, name from account where name = 'Salesforce Inc.' limit 1];
system.assertEquals('Salesforce Inc.', acc.name);
}
@istest
private static void createConAccTest(){
account ac = new account();
ac.name = 'Softinnovas Inc.';
insert ac;
//kontakt olusumunu yoklaaa.. soqla
Batch12Demo.createContactOfAccount();
list<contact> conlist = [select id, lastname from contact where name = 'Contact'];
system.assertEquals(1, conlist.size());//listin sayiis 1mi
}
}
