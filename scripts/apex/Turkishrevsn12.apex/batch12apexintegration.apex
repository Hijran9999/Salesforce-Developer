list<account> acc = new list<account>();
account acc1 = new account();
acc1.name = 'Integration account 1 turkish revision';
acc1.AnnualRevenue = 100000;
acc1.Phone = '2345678789';

acc.add(acc1);

account acc2 = new account();
acc2.name = 'Integration account 2 turkish revision';
acc2.AnnualRevenue = 200000;
acc2.Phone = '2345678789';

acc.add(acc2);

system.debug(acc);
//listemizi json formata cevirelim

string listjsonstr = JSON.serialize(acc);
system.debug(listjsonstr);//sObjecte cevrildi
//listemizi json formattan tekrar account recordlari haline getir
 list<account> acliste = (list<account>)JSON.deserializeStrict(listjsonstr, list<account>.class);
 system.debug('JSON formattan account recorduna dondirulmus data ' + acliste);

 List<case> caselist = [SELECT Id, CaseNumber, Subject, Description, account.name, contact.firstName, contact.name FROM Case limit 2 ];
 string caselistjason = JSON.serialize(caselist);
 system.debug(caselistjason);


 RestCallout12TekrarTurkishRevision2.getUser();