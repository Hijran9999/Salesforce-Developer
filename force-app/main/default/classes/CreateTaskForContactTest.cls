
@istest
public  class CreateTaskForContactTest {
    @TestSetup
    static void makeDataContacts(){
        list<contact> lc = new list<contact>();
        for(integer i=0; i<10; i++){
            contact c = new contact();
            lc.add(c);
        }
        insert lc;


    }
   @istest
    public static void testTaskCreate() {
//data preparation
contact c =new contact();
c.LastName = 'testcon';
insert c;
//call actual method
CreateTaskForContct.createTasks('testcon');

list<task>  alt = [select id, subject, whoid from task where WhoId = : c.id];
system.assert(alt.size()==1);
system.assertEquals('Email', alt[0].Subject);
//one task for one contact
    }
    

    @istest
//data preparation
    public static void testTaskCreate2() {
       
 
 
 //call actual method
 Test.startTest();
 CreateTaskForContct.createTasks('testcon');
 test.stopTest();
 list<task>  alt = [select id, subject, whoid from task];
 system.assert(alt.size()==10);
 for(task tt : alt){
    system.assertEquals('Email',tt.Subject);
 }
 
 //one task for one contact
     }
    @istest
     private static void testOppCreate2(){
        list<contact> lc = [select id, name, lastname from contact];
        test.startTest();
        CreateTaskForContct.createOpps(lcon);
        test.stopTest();
        List<Opportunity> alop= [select id, name, contactid from Opportunity where ContactId = : lcon];
        system.assert(alop.size()==10);
     }
  
}
