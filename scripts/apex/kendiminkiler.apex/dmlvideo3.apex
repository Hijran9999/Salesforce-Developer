DmlVideo3ozetdympteszeevde.createMultiAccountAndContacts();
account ac = new account();
ac.name = 'Deffault';
insert ac;
list<contact> conlist = [select id,name, accountid from Contact where accountid = null];
system.debug(conlist);

account acc = [select id, name from account where name = 'Deffault' limit 1];
id accid = acc.id;
for(contact con : conlist){

con.AccountId = acc.id;


}
update conlist;
DmlVideo3ozetdympteszeevde.dmlUpdatedemo_1();
DmlVideo3ozetdympteszeevde.dmlUpdateDemo_3();
account accc = new account();
accc.name = 'Demo12 new bizim apex';
insert accc;
account acc1= [select id, name from account where name = 'Demo12 new bizim apex' limit 1];
acc1.name = 'Demo 12 bizim apex update formasi';
update acc1;
account acc3 = [select id, name from account where name = 'Demo 12 bizim apex update formasi' limit 1];
acc3.name = 'Demo 12 bizim apex update formasi newwwwwwww';
update acc3;
contact con = new contact();
con.LastName = 'Demo 12 Contact org men';
insert con;
account acc4 = [select id, name from account where name ='Demo 12 bizim apex update formasi newwwwwwww' limit 1 ];

contact con2 = [select id, lastname, accountId from contact where name= 'Demo 12 Contact org men' limit 1];

con2.AccountId = acc4.id;
update con2;

list<account> aclist = new list<account>();
account acc5 = new account();
acc5.name = 'Batch 12 A';
aclist.add(acc5);
account acc6 = new account();
acc6.name = 'Batch 12 B';
aclist.add(acc6);
account acc7 = new account();
acc7.name = 'Batch 12 C';
aclist.add(acc7);
insert aclist;
list<account> hl = new list<account>();
for(integer i=1;i<=11;i++){
    account acc = new account();

acc.name = 'Batch 12 New  oz etdym ' +i;
hl.add(acc);


}
insert hl;
list<account> lacc = [select id, name from account where name like '%Default%' limit 4];
list<contact> list1 = new list<contact>();
integer a = 1;
for(account acc : lacc){

contact cn = new contact();
cn.LastName = 'Yeni tip default' + a;
a++;
cn.AccountId = acc.id;
list1.add(cn);


}
insert list1;
DmlVideo3ozetdympteszeevde.createMultiAccountAndContacts();