public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew, List<account> accTriggerOld, 
                                    Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
        for (Account eachAccount : accTriggerNew) {
            boolean updateDesc = false;
            system.debug('insertbtime');
            if (Trigger.isInsert && eachAccount.Active__c == 'Yes') {
                updateDesc = true;
            }
            if (Trigger.isUpdate) {
                Id accId = eachAccount.Id;
                Account oldAcc = accTriggerOldMap.get(accId);
                Account newAcc = accTriggerNewMap.get(eachAccount.Id);
                
                if(eachAccount.Active__c == 'Yes' && oldAcc.Active__c != newAcc.Active__c){
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAccount.Description = 'Account is now Active. Enjoy, celebrate, have fun.';

            }
        }
    }



  


        /*public static void updateVIPforContacts(List<account> accTriggerNew, List<account> accTriggerOld, 
        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
                //set of account ids
                set<id> accountIds = new set<id>();
            //for trigger.new
            for (Account eachAcc : accTriggernew) {
                 //check if vip is changed (if condition)
                 if (eachAcc.vip__c != accTriggerOldMap.get(eachAcc.Id).vip__c) {
                    //add acc id in set of accountids
                    accountIds.add(eachAcc.Id);
                 }
            } //we have all acc ids where is vip is changed
               
            //get contacts of all the accounts where vip is changed. 
            list<contact> allContacts = [select id, vip__c, accountId from contact where accountId in :accountIds];
           
            if (!allContacts.isEmpty()) {
                
                //for loop of contact
                for (contact eachContact : allContacts) {
                    //set vip field same as account's vip field
                    //eachContact.vip__c = account's vip field
                    account newAcc = accTriggerNewMap.get(eachContact.AccountId);
                    boolean accVIP = newAcc.vip__c;
    
                    eachContact.vip__c = accVIP;
                }
                update allContacts;
            }
                
            
            //update contacts
        }*/
        public static void updateVipContacts1(List<account> accTriggerNew, List<account> accTriggerOld, 
        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
set<id> setacIds= new set<id>();
for(account  eachAcc : accTriggerNew){
if(eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.id).Vip__c){

setacIds.add(eachAcc.id);

}
list<contact> allCon = [select id, vip__c, accountId from contact where accountId  in : setacIds ];
for(contact eaccon : allCon){
    account newAcc = accTriggerNewMap.get(eaccon.AccountId);
    boolean accVip = newAcc.Vip__c;
    eaccon.vip__c = accVip;

}
update allcon;

}
        }

        public static void updateBilingCity(List<account> accTriggerNew, List<account> accTriggerOld, 
        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){

set<id> accids = new set<id>();
for(account eachAcc : accTriggerNew){
if(eachAcc.BillingCity!= accTriggerOldMap.get(eachAcc.id).BillingCity){

accids.add(eachAcc.id);


}


}
list<contact> allContacts = [select id, name, accountid, account.BillingCity from contact where accountid in :accids];

if(!allContacts.isEmpty()){

for(contact eachcon : allContacts){



eachcon.MailingCity =accTriggerNewMap.get(eachcon.accountId).BillingCity;

}
update allContacts;

}
 
        }
    }



     