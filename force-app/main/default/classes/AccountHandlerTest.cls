@istest

public  class AccountHandlerTest {
  @TestSetup
  static void makeData(){
    list<account> listac = new list<account>();

    for(integer n =0; n<20; n++){

        account ac = new account();
        ac.name= 'Hiji test ' +n;


        insert ac;
    }


  }

  @istest
private static void mtest(){

    Boolean isfailed = false;
try{

    account acc = new account();
    acc.name = 'Hiji test 10';
    insert acc;
}catch(DmlException dx){

    isfailed= true;
}
system.assertEquals(true, isfailed);
}

@istest
private static void method2test(){

account ac = new account();
ac.name = 'Test yeni opp icin ';

insert ac;
list<contact> listemcon = [select id from contact];
//contact  = [select id from account where lastname = 'Test yeni opp icin '];

List<Opportunity> listop = [select id from Opportunity];
integer size = listemcon.size() + listop.size();
system.assertEquals(42,size );

}
@istest
private static void updateDescrpttest(){

account acc = new account();
acc.name = 'testimmm';
acc.Description = 'yeni des update';
insert acc;

list<contact> cl= [select id, description from contact ];
List<Opportunity> opl = [select id, description from Opportunity ];
list<contact> cliste = new list<contact>();
for(contact c : cl){
if(c.Description=='yeni des update'){
cliste.add(c);
}
  
}

List<Opportunity> listop = new List<Opportunity>();
for(Opportunity op : opl){
if(op.Description=='yeni des update'){
  listop.add(op);
}
}

integer sz  = cliste.size() + listop.size();
system.assertEquals(2, sz);
}
}
