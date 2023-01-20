@istest
public with sharing class casequetest {
    @istest
   private static void casequetest(){

    CaseQueuebleApex n = new CaseQueuebleApex();

test.startTest();//senxrnze hale getiriyo
id jobid = system.enqueueJob(n);
test.stopTest();

case c = [select id, Origin from case  ];
system.assertEquals('Web', c.Origin);
   }
}
