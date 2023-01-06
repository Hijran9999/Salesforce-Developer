@istest
public class BatchContactTest {
   

@TestSetup
static void makeData(){
    list<account> aclist = new list<account>();

for(integer i=0;i<200; i++){

    account acc = new account();
    acc.name = 'Test yapdim ' +i;
    acc.Description = 'Account update';
    aclist.add(acc);
}
insert aclist;


list<contact> conliste = new list<contact>();
for(account acc : aclist){

    Contact conn = new contact();
    conn.LastName = 'Jony';
    conn.AccountId = acc.id;
    conliste.add(conn);
}
insert conliste;
}
@istest
private static void m2test(){
test.startTest();
BatchContactUpdate bc = new BatchContactUpdate();
id jobid =  Database.executeBatch(bc, 200);
test.stopTest();
contact cl = [select id, lastname, description from contact limit 1 ];
system.assert(cl.Description.contains('Account'));

}
    
}
