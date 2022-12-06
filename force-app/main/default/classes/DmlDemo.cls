public  class DmlDemo {
    public static void dmlInsertDemo_stndObj(){

//we will create account record 
account acc = new account();
acc.Name = 'Soft innovas';
acc.name = 'United Kingdom';
insert acc;
system.debug(acc);
    }

    public static void dmlInsertDemo_cstmObj(){
Salesforce_project__c spNew = new Salesforce_project__c();

spNew.project_name__c = 'Teach DML to Batch12';
spNew.description__c = 'All of you are great';

insert spNew;

    }
    public static void dmlUpdateDemo_1(){
account acc = new account();
acc.Name = 'Soft Inn ';
insert acc;
acc.Name = 'Salesforce Inc ';
update acc;



    }
}
