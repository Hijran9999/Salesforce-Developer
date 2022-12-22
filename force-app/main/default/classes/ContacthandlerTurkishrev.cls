public class ContacthandlerTurkishrev {
    public static void contactOtherphone(list<contact> trnew, list<contact> trold, map<id,contact> newmap, map<id,contact> oldmap) {

Map<Id,Account> accMap = new map<id,Account>();
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
    }
}
