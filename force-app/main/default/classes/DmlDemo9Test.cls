@isTest
public  class DmlDemo9Test {

@TestSetup
static void makeData(){
    account  ac = new account();
    ac.name = 'SoftInnovas Inc.';
    insert ac;

    account acc = new account();
    acc.name = 'Hijrannn2';
    acc.Active__c= 'Yes';
    insert acc;
}
@istest
    private static void dmlinsertest() {
        //DML in TEST
        DmlDemo9.dmlInsertDemo_stndObj();//call dml method
        //will it insert record in org?     NO. 

        //it will insert record in Testing world.

        //how to verify then?
        //get the record from testing world.

        //soql -> we cannot get records from org.
            //-> we get the records from TESTING world.
        List<account> listAcc = [select id, name from account where name = 'SoftInnovas1234'];
   
        system.assertEquals('SoftInnovas1234', listAcc[0].Name);
    }
    @isTest
    private static void dmlinsert4tes(){

DmlDemo9.dmlInsertDemo_4();

list<contact> allContacts = [select lastname,name from contact where lastname ='Biden'];
system.assertEquals('Biden', allcontacts[0].LastName);//ilk elemani sifirla gir en sonuncyu bul
    }
    @istest
private static void method1(){

    
    DmlDemo9.dmlUpdateMultiple_right1();
list<account> listacc = [select id, name, active__c from account where name = 'Hijrannn2via b'];
    system.assertEquals('Hijrannn2via b', listacc[0].name);
}
@isTest
    private static void dmlInsertDemo_5test() {
        Salesforce_Project__c sp  = new Salesforce_Project__c();
        sp.Project_Name__c = 'SP test';
        sp.Status__c = 'New';
        insert sp;

        DmlDemo9.dmlInsertDemo_5(); //will this work?

        //to verify, we soql.
        List<Salesforce_Ticket__c> listST = [select id, subject__c, salesforce_project__c 
                            from Salesforce_Ticket__c where Subject__c = 'Learn apex dml'];
        system.assertEquals(sp.Id, listST[0].Salesforce_Project__c);
    }

}
