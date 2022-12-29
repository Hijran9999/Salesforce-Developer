@isTest
public  class InertAccountContactTest {
    @isTest
    private static void insertAccntTest(){
InsertAccountContact.insertAccountCon('test ac name ', 'contact last name ');
list<account> acc = [select id, name from account where name ='test ac name ' ];//1
system.assert(!acc.isEmpty());//condtion
list<contact> cont = [select id, lastname, accountid from contact where lastname = 'contact last name '];//1 minimum one
system.assert(cont.size()==1);//c
system.assertEquals(acc[0].id, cont[0].AccountId);//ikisinin esit olub olmadiginiyokladii
    }
   
}
