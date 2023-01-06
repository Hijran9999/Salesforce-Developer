@istest
public class BatchTaskTest {
    
@TestSetup
static void makeData(){
    List<Opportunity> listopp = new List<Opportunity>();
for(integer i=0; i<100; i++){

Opportunity opp = new Opportunity();
opp.StageName = 'Prospecting';
opp.name = 'Test opp1';
opp.CloseDate = date.today();
listopp.add(opp);


}
if(!listopp.isEmpty()){
    insert listopp;
}

}
    @istest
private static void batctest(){

test.startTest();
BatchApextask hh = new BatchApextask();
id jobid = Database.executeBatch(hh, 100);

test.stopTest();
list<AsyncApexJob> testt = [select id, apexclass.name, status, jobtype from AsyncApexJob];


list<task> tasklist = [select id from task ];
//system.assertEquals(100, tasklist.size());
system.assertEquals(1, testt.size());


}
    }

