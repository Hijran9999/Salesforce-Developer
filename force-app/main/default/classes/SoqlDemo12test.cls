@istest
public class SoqlDemo12test {
  /*  @TestSetup
    static void makeData(){
          
list<account> lisac = new list<account>();

account ac = new account();
ac.name = 'SoftInnovas Inc.';
lisac.add(ac);
account ac1 = new account();
ac1.name = 'mery';
ac1.Industry = 'Energy';
lisac.add(ac1);
account ac2 = new account();
ac2.name = 'neni';
ac2.Industry = 'Education';
lisac.add(ac2);
insert lisac;



    }
    @istest
    public static void accountIndustryOfEducationTest() {
        test.startTest();
        integer sz = SoqlDemo12.accountIndustryOfEducation('Education');
        test.stopTest();
        system.assertEquals(1, sz);
    }
   @istest

   public static void dmlinserttest(){
   
    
SoqlDemo12.dmlInsertDemo_4();
contact cn =  [select id, lastname from contact where lastname = 'Biden' limit 1];

system.assertEquals('Biden',cn.LastName);



   }*/


   @TestSetup
   static void makeData(){
    
   
    list<account> ls = new list<account>();
    account acc = new account();
    acc.name = 'SoftInnovas Inc.';
   ls.add(acc);
    account acc1 = new account();
    acc1.name = 'testt 1';
    acc1.Industry = 'Education';
    ls.add(acc1);
    account acc2 = new account();
    acc2.name ='test 2';
    acc2.Industry= 'Energy';
ls.add(acc2);
insert ls;

   }
@istest

   private static void accountIndustryOfEducation(){
   

test.startTest();
integer sz = SoqlDemo12.accountIndustryOfEducation('Education');

test.stopTest();

system.assertEquals(1, sz);
   }

   @istest
   private static void dmlinsertTest(){

    
    test.startTest();
    SoqlDemo12.dmlInsertDemo_4();

    test.stopTest();
   
    contact soqlcn = [select id, lastname from contact where lastname = 'Biden' limit 1];

    system.assert(soqlcn.LastName=='Biden');
   }
   
}
