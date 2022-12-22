public with sharing class AccountUpdateHelper {
    @invocableMethod
    public  static void updateAccountWebsite(list<id> accids) {
list<account> listac= [select id, website from account where id in : accids];
for(account acc : listac){


    acc.website = 'www.softinnovas.com';
}
update listac;
    }
}
