list<account> listacc = new list<account>();
account acc1 = new account();
acc1.name  = 'Integration account 1';
acc1.AnnualRevenue= 100000;
acc1.phone = '22222';
listacc.add(acc1);

account acc2 = new account();
acc2.name  = 'Integration account 2';
acc2.AnnualRevenue= 1000001;
acc2.phone = '2222332';
listacc.add(acc2);

system.debug(listacc);
string listaccJson =   JSON.serialize(listacc);//asssign ettik boylece json formata donusdurduk...
system.debug(listaccJson);
//listemizi json formattan tekrar account recordlari haline getir...
list<account> listaccnew = (list<account>)JSON.deserializeStrict(listaccJson, list<account>.class);

system.debug('JSON formattan Account recorduna dondurulmus data => ' + listaccnew);


list<case> caseList = [SELECT Id, caseNumber, Subject, Description, contact.Firstname, contact.name, account.name FROM Case where contactid !=null and account.id !=null limit 2];

string lstcon = JSON.serialize(caselist);

system.debug(lstcon);
