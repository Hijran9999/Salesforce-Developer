public  class DmlDemoTekrarev {
    public static void dmlUpdt() {

        account ac = new account();
        ac.Name = 'Sfdccc';
        insert ac;
        ac.name = ' Salesforceee';
        update ac;


        ac.name = 'Salesforce new 1';
        update ac;
system.debug(ac);
    }

    public static void dmlupp(){
        account acc = [select id, name from account where name = 'Softinnovas n' limit 1];
acc.name = 'SoftInnnnnnnnnnas';
update acc;
system.debug(acc);
    }


    public static void dmlinsert3(){

account acc = [select id from account where name = 'new account 99' limit 2];
contact cnt = new contact();
cnt.LastName = 'Bidennn';
cnt.Accountid = acc.id;
insert cnt;
system.debug(cnt);
    }
    public static void dmlinsert4(){
Salesforce_Project__c spp = [select id, name from Salesforce_Project__c order by CreatedDate limit 1 ];
Salesforce_Ticket__c st = new Salesforce_Ticket__c();
st.Subject__c = 'Learn Dml';
st.Priority__c = ' Medium';
st.Status__c = 'new';
st.Requested_by_date__c = date.today();
st.Salesforce_Project__c = spp.id;//relationshipdi buu ona gore dedate type gore edrk. objectin adi = id relationship excepts idddd/////
insert st;
    }
    public static void methodInsertMultipleWrite(){
list<account> listacc = new list<account>();
account acc1 = new account ();
acc1.name = 'acc bulk 4';
acc1.Phone = '7898492';
listacc.add(acc1);
account acc3 = new account();

acc3.name = 'accbulk4';
listacc.add(acc3);
update listacc;

account acc2 = new account();//birnici instance yarta haa
acc2.name= ' acc bulk 5';
acc2.phone = '7899389';
listacc.add(acc2);
insert listacc;
    }

    public static void dmlinsrihgtway(){

list<account> listAcc = new list<account>();
for(integer i=0; i<15;i++){
    account acc = new account();
acc.name = 'ben' + i;
listAcc.add(acc);

}
if(!listAcc.isEmpty()){

    insert listAcc;
}
system.debug(listAcc);
    }
    public static void dmlUpdateMultiple_right1() {
        list<account> listAccount = [select id, name, active__c from account];

        //update only those account for which active__c == 'Yes'     
        list<account> updateAccounts = new list<account>();
         
        for (Account acc : listAccount) {
            //check if acc active = yes
            if (acc.Active__c == 'Yes') {
                acc.Name = acc.Name + ' via B'; 
                updateAccounts.add(acc);
            }
        }

        if (!updateAccounts.isEmpty()) {
            update updateAccounts;
        }
    }
}
