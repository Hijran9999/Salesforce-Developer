account acc = [select id, name  from account order by lastmodifieddate desc limit 1];
system.debug('acc = ' + acc);
List<Asset> la = new list<asset>();
for(integer i=0; i<220; i++){

asset a = new asset();
a.name = 'aa ' + 1;
a.AccountId = acc.id;
la.add(a);

}
insert la;
delete [select id from asset  where accountid = '02iDo000000gy70IAA'];