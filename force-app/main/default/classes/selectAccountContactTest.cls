@isTest
public class selectAccountContactTest {
   @TestSetup
    static void makeData(){
account ac = new account();
ac.name = ' any account';
insert ac;
contact c = new contact();
c.LastName = 'literally';
c.AccountId = ac.id;
insert c;
   }
   @istest
   private static void selectAccContactsTest(){



SelectAccountContact.selectaccCon('any account', 'literally');

List<Opportunity> opps = [select id, name, accountid from Opportunity];
system.assert(!opps.isEmpty());

   }
}
