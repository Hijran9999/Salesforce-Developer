@istest
public  class CreateTaskCaseTest {
   
    @TestSetup
    static void makeData(){
        
list<case> caselist = new list<case>();
for(integer i=0;i<3;i++){
case caseee = new case();
caseee.Status = 'New';
caseee.Origin = 'Phone';
caselist.add(caseee);

    }
    if(!caselist.isEmpty()){
insert caselist;
    }

}
@istest
public static void case1test(){
test.startTest();
CreateTaskCaseBatchable n = new CreateTaskCaseBatchable();
Database.executeBatch(n, 200);
test.stopTest();


list<task> listtask = [select id from task ];
system.assertEquals(3, listtask.size());
}
@istest
private static void scheduletask(){
    test.startTest();

taskshedulableclas hb = new taskshedulableclas();
//Database.executeBatch(hb, 200);
string cronex = '0 0 15 1/1 * ? *';
system.schedule('daily task', cronex, hb);

}
}