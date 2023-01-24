public with sharing class Acctriggerhandler {
    public static void createContact(List<Account> accTriggernew) {
        List<Contact> conList = new List<Contact>();
        for (account acc : accTriggernew) {
            for (Integer i = 1; i <= 7; i++) {
                contact c = new contact();
                c.FirstName = acc.name;
                c.LastName = 'Contact ' + i;
                c.AccountId = acc.id;
                conList.add(c);
            }
        }

        insert conList;
    }
    public static void updateName(List<Account> triggerNew, Map<Id, Account> triggerOldMap) {
        for (account acc : triggerNew) {
            if (acc.name != triggerOldMap.get(acc.id).name) {
                acc.Description = 'Bu recordda isim degisikligi oldu..';
            }
        }
    }


    public static void method1(list<account> trnew, Map<Id,Account> mapold){

//List<Account> listac  = [select id, name, shippingCountry from account where id in : trnew ];//triggenewdan gelen accountlarin deyerlerini aliyoruz...oyle yapmassak butun accontlar gelir. sadece update olanlar yeter...
list<contact> listcon = [select id, mailingcountry, AccountId, Previous_Country__c  from contact where AccountId in : trnew ];//update etdymz contacti listesini yaptik 
for(Account acc : trnew){

if(acc.ShippingCountry!=mapold.get(acc.id).ShippingCountry){

for(contact con : listcon){
if(con.AccountId==acc.id){//relatese bu kontaktlari al ve deyistir...
    con.MailingCountry = acc.ShippingCountry;
    con.Previous_Country__c = mapold.get(acc.id).ShippingCountry;
}

   
}
}
}
update listcon;

    }
}
//

/*Label: Previous Country
Datatype: Text
2. If Account's Shipping Country Changed 
Update Mailing Country of all Child Contact Records with 
latest value of Account's Shipping Country 
Also Store old Shipping Country Value of Account in a 
Custom Field (Previous Country) on all Contact Records*/