
public class ContactHandlerClass {
    public static void contactMethod(list<contact> triggerNew) {
set<id> idSet = new set<id>();
for(contact eachCon : triggerNew){

idSet.add(eachCon.AccountId);//short way

//forla id al
//setle id al unique ya
// sete attik

}

list<account> acclist = [select id, name, phone from account where id  = :idSet];//accountun idsen esit olanlari 

map<id, account> accMap = new map<id, account>();
for(account eachacc : acclist){

 accmap.put(eachacc.id,eachacc);
 for(contact eachcon : triggerNew){
    if(accmap.containsKey(eachcon.accountId)){

        eachcon.OtherPhone = accMap.get(eachCon.AccountId).Phone;
    }



 }

}
    }/*
    public static void ContactMethod2(map<id, contact> triggerNewmap){
set<id> acids = triggerNewmap.keySet();

list<contact> conList = [select id, name, otherPhone, account.Phone, AccountId  from contact where id IN : acids ];
for(contact eachcnt : conList){

if(eachcnt.AccountId != null){

    eachcnt.OtherPhone = eachcnt.Account.Phone;
}


}

update conList;
    }*/
}
