list<account> listac = [select id from account];
list<id> listids = new list<id>();

for(account acc : listac){
listids.add(acc.id);
    
}
AccountInvocable.closeOpps(listids);

list<account> aci = [select id from account];
list<id> ids = new list<id>();
for(account acc : aci){
    ids.add(acc.id);
}
AccountInvocable.deleteopps(acc.id);