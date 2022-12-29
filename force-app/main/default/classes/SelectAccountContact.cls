public  class SelectAccountContact {
    public static void selectaccCon(string accName, string contname) {
list<account> accs = [select id, name, phone, website from account where name = :accname];
system.debug('accs = ' + accs);
list<contact> contacts = [select id, accountid, lastname from contact where  lastname = :contname];
system.debug('contacts = ' + contacts);
List<Opportunity> opl = new list<Opportunity>();

   for(account a : accs){
    
   

Opportunity  op = new Opportunity();
op.name = 'op '+ a.name;
op.AccountId=a.id;
op.CloseDate = date.today();
op.StageName = 'New';
opl.add(op);
}
    }
}
