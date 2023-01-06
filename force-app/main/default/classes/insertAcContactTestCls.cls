@istest
public class insertAcContactTestCls {
    @istest
  private static void insertacTest() {
InsertAccountContact.insertAccountCon('testacname','conlastname');
list<account> acl= [select id, name from account where name = 'testacname'];
system.assert(!acl.isEmpty());

list<contact> conl = [select id, lastname,accountId from contact where lastname = 'conlistname'];
system.assert(conl.size()==1);
  }
}
