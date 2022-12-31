@istest
public with sharing class AccountsBatchTest {
    @istest
    private static void testBatch1(){
list<account> listac = new list<account>();
for(integer i=0;i<90; i++){
    account ac = new account();
    ac.name = 'Pi test ' +i;
    ac.Active__c = 'Yes';
listac.add(ac);

}
insert listac;
test.startTest();
AccountsBatch ab = new AccountsBatch();
id jobid = Database.executeBatch(ab, 90);
//we cannnot divide in groups when we executing batch from test
Test.stopTest();
list<account> kj = [select id, description from account];
system.assert(kj[0].Description.contains('batch'));
    }
}
