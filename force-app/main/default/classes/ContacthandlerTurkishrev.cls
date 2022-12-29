public class ContacthandlerTurkishrev {
  
  
  
    /* public static void contactOtherphone(list<contact> trnew, list<contact> trold, map<id,contact> newmap, map<id,contact> oldmap) {
Map<Id,Account> accmap = new map<id,account>();

set<id> acids = new set<id>();
list<contact> conList = new list<contact>();


for(contact con : trnew){

    if(con.AccountId !=null){

        acids.add(con.AccountId);
        conList.add(con);
    }
}
list<account> acList = [select id, name, phone from account where id in : acids];//bu idleri icinde tasiyan idlere accountlari lit kimi mene ghetr
for(account acc : acList){
accmap.put(acc.id, acc);//lsti map formatina cevirdi
}
//otherphonu guncelle
for(contact cn : conList){

    cn.OtherPhone = accmap.get(cn.AccountId).phone;

}
    }
public static void contactOtherPhone2(List<Contact> triggerNew) {
    //insert edilen tum contactlardan bir accounta bagli olanlari secelim..
    set<id> conIds = new set<id>();

    for (contact con : triggerNew) {
        if (con.AccountId != null) {
            conIds.add(con.id);
        }
    }

    //Bir Accounta bagli olan tum contactactlari accountun(parent) phone ile beraber SOQL yapalim..
    List<Contact> conList = [select id, otherPhone, account.phone from Contact where id IN :conIds];

    //Bu listeyi bir for each dongusunun icine alip otherPhone guncellemesini yapalim..
    for (Contact con : conList) {
        con.otherPhone = con.account.phone;
    }

    if (!conList.isEmpty()) {
        update conList;
    }
}*/
}



/*Map<Id,Account> accMap = new map<id,Account>();
set<id> accIds = new set<id>();

//bir accainta bagli kontaktlari ayri update edelim'

list<contact> conList = new list<contact>();
for(contact con : trnew){
if(con.AccountId!=null){

    accIds.add(con.AccountId);
    conList.add(con);
    //soqlla accaiuntlara aid recod bilgileri getr
}

}
list<account> aclist = [select id, name, phone from  account where id in : accIds];
for(account ac :aclist ){
accMap.put(ac.id, ac);
}
for(contact cn : conList){


    cn.OtherPhone = accMap.get(cn.AccountId).Phone;
}
    }
    public static void contactOtherPhone1(list<contact> trnew){
set<id> conids = new set<id>();
for(contact con : triggerNew){
if(con.AccountId!=null){
    conids.add(con.id);

}

}
list<contact> conliste = [select id, otherPhone, account.phone from Contact where id in : conids];
for(contact conn : conliste){
    con.otherPhone = con.account.phone;

}
if(!conliste.isEmpty()){
    update conliste;
}
    
}*/


