@istest
public with sharing class BatchOppTestCls {
   

@TestSetup
static void makeData(){
    List<Opportunity> listop = new List<Opportunity>();


    for(integer i=0;i<3; i++){

Opportunity opp = new Opportunity();
opp.name = 'test 1';
opp.CloseDate = date.today();
opp.StageName = 'Prospecting';
listop.add(opp);

    }
    if(!listop.isEmpty()){

        insert listop;
    }


    test.startTest();
    BatchOpportunityApex op = new BatchOpportunityApex();
    id jobid = Database.executeBatch(op, 3);
    test.stopTest();
List<Opportunity> opl = [select id from Opportunity];
    system.assertEquals(3, opl.size());
}
}
