public  class DmlDemo3 {
    public static void dmlInsertDemo_stnObj(){
account acc = new account();
acc.name = 'Soft Innovas newwww';

system.debug(acc);
insert acc;
}
public static void dmlInsertDemo_cstmObj(){

salesforce_Project__c spnew = new salesforce_project__c();
spnew.project_name__c = 'Teach npw DML to us';
spnew.description__c = 'all you do good joobb';
spnew.status__c = ' New';
spnew.description__c = 'Keep it upp';
insert spnew;


}

public static void dmlUpdateDemo_1(){
account acc = new account();
acc.name = 'Soft Innovas newwww';
insert acc;
acc.name = ' SoftInnovas n';
update acc;
acc.name= 'n';
update acc;

}
public static void dmlUpdateDemo_3(){
account acc = [select id,name from account where name = 'Soft Innovas new' limit 1];
acc.name = 'SoftInnovas Inc';
update acc;
system.debug('acc =>' + acc);
}


public static void dmlInsertDemo_4() {
    Account acc = [select id from account where name = 'SoftInnovas new' limit 1];
    
    Contact cnt = new contact();
    cnt.LastName = 'Biden';
    cnt.AccountId = acc.Id;
    insert cnt;
    system.debug('cnt -> ' + cnt);
}
public static void dmlUpdateDemo_2_CO(){
Salesforce_Project__c sp = [select id from salesforce_project__c order by createddate desc limit 1];
Salesforce_Ticket__c st = new Salesforce_Ticket__c();
st.Subject__c = 'Learn apex';
st.Priority__c = 'High';
st.Status__c = 'new';
st.Salesforce_Project__c = sp.Id;
insert st;

}
public static void dmlMultipleRecordInsert_right(){
    list<account> listacc = new list<account>();

account acc1 = new account();
acc1.name = 'acc bulk 1';
listacc.add(acc1);
account acc2 = new account();
acc2.name = 'acc bulk 2';
listacc.add(acc2);

insert listacc;
}

public static void dmlInst2(){

    list<account> listacc = new list<account>();

    for(integer i=0; i<179; i++){



        account acc =new account();

        acc.name = 'Softinnovas v';


        acc.Active__c = 'Yes';
        listacc.add(acc);
        
        
    }
    if(!listacc.isEmpty()){


        insert listacc;
    }
    system.debug(listacc);
}

public static void dmlins2(){
list<account> listacnt = [select id, name, active__c from account];
list<account> updateAccounts = new list<account>();

for(account acc : listacnt){



    if(acc.Active__c == 'Yes'){

acc.name += ' via B.O';
updateAccounts.add(acc);


    }
}
if(!updateAccounts.isEmpty()){
update updateAccounts;
}
}
public static void createMultipleAccounts(integer count){
if(count<=0){
    return;//go back demekdi
}
list<account> listacc = new list<account>();


for(integer i=0;i<count;i++){

account acc = new account();

acc.name = 'SpaceZ';
acc.active__c = 'Yes';
listacc.add(acc);



}
if(!Listacc.isEmpty()){

    insert listacc;
}
list<contact> listcnt = new list<contact>();

for(account acc : listacc){

id accid = acc.id;
for(integer i=0; i<count; i++){


    contact c = new contact();
    c.FirstName = 'Milet';
    c.AccountId = accid;
    listcnt.add(c);
}

}
if(!listcnt.isEmpty()){

    insert listcnt;
}


}

}

//yeni record daxil et
// sorus bu kodun menasini
//bulky kod elave et








