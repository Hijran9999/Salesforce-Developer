@istest
public  class CaseTriggerHandlerTest {
@istest
    private static void mtest(){

        case cs = new case();

        cs.Status = '';
        cs.Origin = 'Web';

        test.startTest();
        insert cs;
        test.stopTest();

cs.Status = 'New';


update cs;



case c = [select id, status from case];
system.assertEquals('New', c.Status);

    }


}
