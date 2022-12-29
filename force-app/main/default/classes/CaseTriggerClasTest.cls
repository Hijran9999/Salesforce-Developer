
@istest
public  class CaseTriggerClasTest {
    @istest
    private static void createcaseTest(){
        list<case> listc = new list<case>();
        for(integer i=0;i<3;i++){
            case c = new case();
            c.Status = 'New';
            c.Subject = 'caseTestCase';
            c.Origin = 'Phone';
            listc.add(c);
        }
        test.startTest();
        insert listc;
        test.stopTest();
      integer caseCount = [select count() from case];
      system.assert(caseCount==3);
    }
}
