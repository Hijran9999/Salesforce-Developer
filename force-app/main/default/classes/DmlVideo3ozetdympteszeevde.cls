public class DmlVideo3ozetdympteszeevde {
    public static void createMultiAccountAndContacts(){

list<account> accList = new list<account> ();
for(integer i=0;i<=5;i++){
    account acc = new account();
acc.name = 'Account Demo ' + i;
acc.Phone = '5757687 ' + i;

accList.add(acc);

}
if(!accList.isEmpty()){


insert accList;
}
list<contact> conl = new list<contact>();

for(account ac : accList){

for(integer i=0; i<=5;i++){
contact cn = new contact();
cn.LastName = 'Contact Demo ' +i;
cn.AccountId = ac.id;
conl.add(cn);



}

}
if(!conl.isEmpty()){

    insert conl;
}

    }


    public static void dmlUpdatedemo_1(){

        account acc = new account();
        acc.name = 'Defffault';
insert acc;



acc.name = 'Salesforcee Inceeee';
update acc;
    }


    public static void dmlUpdateDemo_3(){
account acc = [select id, name from account where name = 'default' limit 1];
acc.name = 'Default11';
update acc;
system.debug(acc);
    }
    public static void createAcountAndContacts(){
list<account> list2 = new list<account>();
for(integer i=1;i<=5;i++){

account acc = new account();
acc.name = 'Hijran 1 ' + i;
list2.add(acc);
}
if(!list2.isEmpty()){


    insert list2;
    system.debug('5account create edildi .. ' + list2);
}
list<contact> listcon = new list<contact>();
for(account acc : list2){
for(integer i=1; i<=6;i++){


    contact cn = new contact();
cn.FirstName = acc.name;
    cn.LastName = 'Hijiiiiiii ' + i;
    cn.AccountId= acc.id;
    listcon.add(cn);
}

 
}

if(!listcon.isEmpty()){
    insert listcon;
    }

    }

}
