public with sharing class AccountUpdateHelper {
    @invocableMethod
    public  static void updateAccountWebsite(list<id> accids) {
list<account> listac= [select id, website, type, phone from account where id in : accids];
list<contact> listcon = new list<contact>();
for(account acc : listac){

acc.Type = 'Prospect';
    acc.Phone= '7890980980';
    contact c = new contact();
    c.AccountId = acc.id;
    c.LastName = 'Benni';
    c.Email = 'benni@gmail.com';
    listcon.add(c);
}
insert listcon;
update listac;
    }
}
