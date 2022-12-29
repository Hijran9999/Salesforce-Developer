@isTest

public  class StringConcateDemoTest {
  @istest
    public static void testConcate(){
        string r = StringConacteDemo.concateAndUpperCase('test', 'method1');
        system.debug(r);
system.assert(r=='TEST, METHOD1');//assert means testers glass
        system.assertEquals('TEST, METHOD1', r);

   }
   public static void testConcateLower(){
    string r = StringConacteDemo.concateLowerCase('TEST','METHOD1');
    system.debug(r);
    system.assertEquals('test, method1', r);//positive test
    system.assertNotEquals('TEST, METHOD1', r);//neqative test
   }
   public static void testConcatePrint(){
 StringConacteDemo.printConcate('TEST', 'METHOD1');

   }
}
