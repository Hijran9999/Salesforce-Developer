@istest
public  class SoqlDemo3Test {
   
    @TestSetup
    static void makeData(){
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        List<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        List<contact> listContact = new list<Contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact();
            c.Lastname = 'test soql';
            if (i < 100) {
                c.AccountId = acc1.id;
            } else if (i < 200) {
                c.AccountId = acc2.id;
            } else {
                c.AccountId = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;

    }
    private static void testMethod1() {
        //1. prepare data
        
        //2. test.starttest
        Test.startTest();
        SoqlDemo3.soqlChildToParent_1();
        Test.stopTest();
    }

    @istest
   private static void testmethod2(){
list<account> listacc = [select id, name from account];
for(account eachacc : listacc){
    eachacc.Type = 'Customer - Direct';

}update listacc;



List<Opportunity> listopps = new List<Opportunity>();
for(integer i=0;i<300; i++){
    Opportunity op = new Opportunity();
    op.name = 'Test op ' +i;
    op.StageName = 'Closed Won';
    op.CloseDate = date.today();
    if(i<100){
        op.AccountId = listacc[0].id;
    }else if(i<200){
        op.AccountId = listacc[1].id;

    }else{
        op.AccountId = listacc[2].id;
    }listopps.add(op);
}
insert listopps;
test.startTest();
SoqlDemo3.soqlParentToChild_1();
test.stopTest();
   }
    
   }




   
   
   /*/// @istest
  private  static void testMethod1(){
    account ac = new account();
    ac.name = 'Si test';
    ac.Industry = 'Energy';

    account ac2 = new acount();
    ac2.name = 'Ui test';
    ac2.Industry = 'Banking';

    account ac3 = new account();
    ac3.name = 'Pi test';
    ac3.Industry = 'Banking';
    list<account> listacc = new list<account>{ac,ac2,ac3};
    insert listacc;

list<contact> listcon = new list<contact>();
for(integer i=0;i<300;i++){
contact  c= new contact();
c.lastname = 'test soql';
if(i<100){
    c.AccountId = ac.id;
}
else if(i<200){
    c.AccountId= ac2.id;
}
else{
    c.AccountId = ac3.id;
}
listcon.add(c);
}

insert listcon;
Test.startTest();
SoqlDemo3.soqlChildToParent_1();
test.stopTest();
  }
}*/
