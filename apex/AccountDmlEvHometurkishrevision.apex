
list<account> lisac = new list<account>();
account ac = new account();
ac.Name = 'Hijran';
ac.Phone = '673939894892';
ac.Site = 'New';
ac.Website = 'google.com';
lisac.add(ac);


account ac2 = new account();
ac2.Name = 'Hiji';
ac2.Phone = '748279839';
ac2.Site = 'new';
ac2.Website = 'yahoo.com';
lisac.add(ac2);
insert lisac;
system.debug('litse ac is ' + lisac);

ac2.Name = 'Hiji 34';
ac2.Phone = '6739345';
update lisac;
system.debug(lisac);

list<account> listac= [select name, phone from account where name IN ('Hiji 34','Hijran')];//cokluca silme yontemiiiii

system.debug(listac);
delete listac;
system.debug(listac);  

list<Opportunity> op = new List<Opportunity>();
for(integer i=0;i<150;i++){
Opportunity opp = new Opportunity();
opp.name = 'Homework';
opp.Type = 'New Customer';
opp.StageName= 'Qualification';
opp.CloseDate = date.newInstance(2024,02,02);
opp.Description= 'Description field dolu';
op.add(opp);
}
insert op;

system.debug(op);
List<Opportunity> listdelete = [select name from Opportunity where name like '%Homework%' ];
delete listdelete;
system.debug(listdelete);

account acn = new account();
acn.name = 'Summer Fest LLc';
acn.ParentId = '001Do000003DzfoIAC';
acn.Type = 'Technology Partner';
acn.Rating = 'Hot';
acn.AnnualRevenue = 200000000;



insert acn;

system.debug(acn);
list<contact> conlist = new list<contact>();
for(integer i=0;i<3;i++){
contact con = new contact();

con.lastname = 'Event PLanner' + i;
con.Phone = '+123457896';
con.LeadSource = 'Web';
con.AccountId = '001Do000002XQTiIAO';
conlist.add(con);

}

insert conlist;
system.debug(conlist);