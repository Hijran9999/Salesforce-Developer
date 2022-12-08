account acc =  new account();
acc.name = 'Demo12 apex';
insert acc;
account acc2 = [select id from account where name = 'Demo12 apex' Limit 1];
acc2.name = 'Demo 12 Apex Update';
update acc2;
account acc3 = [select id, name from account where name = 'Demo 12 Apex Update' limit 1];
acc3.name = 'New demo updatee apex';
update acc3;
contact con = new contact();
con.LastName = 'Demo 12 Contact Apex';
insert con;
contact con3  = [select id, lastname, accountid from account where name = 'Demo 12 Update New'];
contact cn= [select id, lastname,accountid from contact where name = 'Demo 12 Contact Apex'];
cn.AccountId = con3.id;
update con2;
list<account> lst = new list<account>();

account acc5 = new account();
acc5.name= 'Batch 12 A';
lst.add(acc5);
account acc6 = new account();//bos instansa tanimlaa
acc6.name = 'Bennii';
lst.add(acc6);
insert lst;
list<account> lisaccc = new list<account>();
for(integer i=1;i<=10;i++){

account acc = new account();
acc.name = 'batchh12 newww';
lisaccc.add(acc);

}
insert lisaccc;

list<account> lacc = [select id, name from account where name like 'acc bulk'];//al contactlariiiiiii
list<contact> listcon = new list<contact>();
integer a = 1;
for(account acc : lacc){

contact c = new contact();
c.LastName = 'Batch 12 contacts' + a;
a++;
c.AccountId = lacc.id;

listcon.add(c);

}
if(!listcon.isEmpty()){
insert listcon;
}