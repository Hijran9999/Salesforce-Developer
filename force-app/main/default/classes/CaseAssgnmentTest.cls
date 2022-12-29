@istest
public  class CaseAssgnmentTest {
    @istest
    public  static void caseInsertTest() {
        Test.startTest();
Caseassginment.caseInsert();
test.stopTest();
list<case> cl = [select id, subject,origin from case where subject ='Testcase'];
//system.assertEquals(1, cl.size(), 'deneme');
system.assertEquals('Testcase',cl[0].subject,'ikinci yol');
    }
@istest
    public static void caseUpdateTest(){

case cs = new case();
cs.Subject = 'Testcase';
insert cs;


Caseassginment.caseUpdate();

list<case> cs2 = [select id, subject from case where subject = 'Testing case 1'];

system.assertEquals('Testing case 1', cs2[0].subject);
    }
    @isTest
    public  static void caseDeleteTest() {
        
        case cs3 = new case();
        cs3.Subject = 'tcase 1';
        insert cs3;

        Caseassginment.caseDelete();


        list<case> c = [select id,Subject from case where Subject like '%case 1%'] ; 

       system.assertEquals(0,c.size());      
    }
   /* @istest
public static void caseDeletetest(){
case css = new case();
css.Subject = 'Testing case 1';
insert css;
Caseassginment.caseDelete();
list<case> scc = [select id, subject from case where subject like %case 1%];
system.assertEquals('%case 1%', scc[0].subject);
}*/

}
