trigger ContactTrigger3 on Contact (before insert,after insert, before update, after update,after delete,after undelete) {

//yeni contact create edilib accaounta baglandgnda ya azaldi artdi bunlari number of contacts fieldini guncelle
//bu oslemden etkilenen tum accountlarin idlerini toplamam lazim 
//set id icinde topla
//bos set yapisi
/*set<id> idset = new set<id>();//1-ci addim
//contact islemi bittikden sonra bir account filedinde guncelleme olacak o yzden after olmali
if(trigger.isAfter){
//tum dml islemleri icin if-ler olusturuyorm
if(trigger.isInsert || trigger.isUndelete){//insert olunca etkilenen accountlari aldim idleri set yapinin icine koyuyorz
    //insert kimidid diye hemin recorduki 
for(contact c : trigger.new){
if(c.AccountId != null){
    idset.add(c.AccountId);

}

}

}
if(trigger.isUpdate){
    for(contact c1 : trigger.new){

if(c1.AccountId != trigger.oldMap.get(c1.id).AccountId){

    idset.add(c1.AccountId);
    idset.add(trigger.oldMap.get(c1.id).AccountId);
}

    }
}
if(trigger.isDelete){
for(contact c3 : trigger.old){//silinen islemde kohne silinir diye trigger old yaz ifin icine
if(c3.AccountId!=null){//account etkilendi diye idni ekle ne tesir edirse o idler sete daxil olur
idset.add(c3.AccountId);
}
}

}
//idset icinde contact sayilari etkilenen tum accountllarin idleri var..
//soqlla accountlari bagli olduklari contactlar ile beraber getiriyorzz
//account soql edrk ki
if(!idset.isEmpty()){

list<account> aclist =[select id, name, Number_Of_Contacts__c, (select id from contacts) from account where id in : idset];//bu idleri icinde tasiyan  accountlari contactklriyla bana getir
//bu account listesini forun icine alib tek tek contact sayilarini bulup guncel deyeri yerine yazin..
for(account acc : aclist){
    acc.Number_Of_Contacts__c=acc.Contacts.size();//10 account varsa kontakti hesablayp yeni degeri icine koyuyor

}
update aclist;

}
}

*/















    /*if(trigger.isBefore && trigger.isInsert){

ContactHandlerClass.contactMethod(trigger.New);


}*/
/*if(trigger.isAfter && trigger.isInsert){
ContactHandlerClass.ContactMethod2(trigger.Newmap);



}*/

/*if(trigger.isBefore && trigger.isUpdate){


    system.debug('tr new is ' + trigger.new);
    system.debug('tr old is ' + trigger.old);
    system.debug('tr newmap is ' + trigger.newMap);
    system.debug('tr oldmap is ' + trigger.oldMap);
//version 1
system.debug('==version1 ===');
for(contact c : trigger.new){

    string oldfirstname = trigger.oldMap.get(c.id).FirstName;//guncellesmeden onceki firstname
    string newfirstname = trigger.newMap.get(c.id).FirstName;//guncellendikden sonraki halii
    system.debug('eski isim : ' + oldfirstname + ', yeni isim : ' + newfirstname);//eski fnamele yeni fname yan-yana koyduk


    string oldlastname = trigger.oldMap.get(c.id).LastName;
    string newlastName = trigger.newMap.get(c.id).LastName;
    system.debug('eski last name : ' +oldlastname  + ', yeni last name : ' + newlastName );//for dongusune alirz ve her birini bir bir alirz.
}
//version 2
system.debug('==version2 ===');

for(contact c1 : trigger.new){
system.debug('eski isim : ' + trigger.oldMap.get(c1.id).FirstName + ', yeni isim : ' + c1.FirstName);
system.debug('eski soyad : ' + trigger.oldMap.get(c1.id).lastName + ', yeni lastname : ' + c1.LastName);//daha iyi

}
//version 3 trigger ol da bir old listesi ona gore forun icine alrq
system.debug('==version3 ===');

for(contact c2 : trigger.old){
system.debug('eski isim : ' + c2.FirstName + ',yeni isim : ' + trigger.newMap.get(c2.id).FirstName);
system.debug('eski last name : ' + c2.LastName + ', yeni last name : ' + trigger.newMap.get(c2.id).LastName);

}

}
*/


}