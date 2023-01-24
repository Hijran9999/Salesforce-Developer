@istest
public class LeadTriggerHandlertest {

    @istest
    private static void tescasecreate(){


        lead ld =  new lead();
        ld.LastName='HijiYenitest';
        ld.Company= 'Abc';
        ld.Status = 'Open-Not Contacted';
        insert ld;


        list<case> c = [select id from case];

        list<task> tsk = [select id from task];

       integer size =  c.size() + tsk.size();
        system.assertEquals(2, size);


    }
}