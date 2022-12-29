trigger ContactTrigger5 on Contact (before insert,after insert,before update,after update,after delete, after undelete) {


















    
   /* if(trigger.isBefore && trigger.isInsert){
        ContacthandlerTurkishrev.contactOtherphone(trigger.new, trigger.old, trigger.newMap, trigger.OldMap);
    }


if(trigger.isAfter && trigger.isInsert){

    ContacthandlerTurkishrev.contactOtherPhone2(trigger.new);
}*/





   /* //bu islemden etkilenen tum accaountlarin idlerini toplamam lazm
    //set idninset<id>
    set<id> idset = new set<id>();
    //contact islemi bitdikden sonra ac fildnde guncellme olcaq dml da var after olmali
    if(trigger.isAfter){
//tum dml islemleri icin ifler olusturyrm
    if(trigger.isInsert || trigger.isUndelete){
//insert durumnda acca baglanmissa ilgili ac idsini set yapinin icine ekliyoruz
for(contact c : trigger.new){
    if(c.AccountId!=null){
        idset.add(c.AccountId);
    }
}
        }
        if(trigger.isUpdate){

            for(contact cc : trigger.new){

                if(cc.AccountId != trigger.oldMap.get(cc.id).AccountId){
                    idset.add(cc.AccountId);
                    idset.add(trigger.oldMap.get(cc.id).AccountId);
                }
            }
        }
    if(trigger.isDelete){
for(contact c : trigger.old){
if(c.AccountId !=null){

idset.add(c.AccountId);
}
}
        }
    
    //acids icinde contact sayilari etkilenen tum acclar idleri var . soqlla accountlari bagli olduklari contcatlar ile beraber beraber getrur.
    
    if(!idset.isEmpty()){


        list<account> aclist= [select id, name, Number_Of_Contacts__c,(select id from contacts) from account where id in :idset];
        //bu acc listesini for dongusunun icine alip tek tek contact sayilarini bulub guncel deyeri yerine yazalm..
        for(account acc : aclist){
            acc.Number_Of_Contacts__c = acc.Contacts.size();
        }
        update aclist;
    }
    }
    
    
    */
    
    
    
    
    
    
    
    /*if(trigger.isBefore && trigger.isInsert){
        list<contact> list1 = trigger.new;
        system.debug('tr new is ' + list1);
        system.debug('record sayisi ' + list1.size());
    for(contact c : list1){
    system.debug('f name is ' + c.FirstName);
    system.debug('last name is ' + c.LastName);
    system.debug('id is ' + c.id);
    system.debug('ac id is ' + c.AccountId);
    
    }
    
    }
    if(trigger.isAfter && trigger.isInsert){
    
        list<contact> list2 = trigger.new;
        system.debug('tr new is ' + list2);
        system.debug('record sayisi ' + list2.size());
        for(contact c1 : list2){
            system.debug('f name is ' + c1.FirstName);
            system.debug('last name is ' + c1.LastName);
            system.debug('id is ' + c1.id);
            system.debug('ac id is ' + c1.AccountId);
            }
    
    }*/
    /*if(trigger.isBefore && trigger.isUpdate){
        system.debug('tetiklendiii=====');
        list<contact> list3 = trigger.new;
        system.debug('tr new is ' + list3);
        system.debug('record sayisi ' + list3.size());
    for(contact c : list3){
    system.debug('f name is ' + c.FirstName);
    system.debug('last name is ' + c.LastName);
    system.debug('id is ' + c.id);
    system.debug('ac id is ' + c.AccountId);
    
    
    
    }
   
    
    }
    if(trigger.isAfter && trigger.isUpdate){
    
        list<contact> list4 = trigger.new;
        system.debug('tr new is ' + list4);
        system.debug('record sayisi ' + list4.size());
        for(contact c1 : list4){
            system.debug('f name is ' + c1.FirstName);
            system.debug('last name is ' + c1.LastName);
            system.debug('id is ' + c1.id);
            system.debug('ac id is ' + c1.AccountId);
            
            
            }
            system.debug('bitdiiiii====');
    
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('tetiklendiii=====');

        list<contact> list5 = trigger.old;
        system.debug('tr new is ' + list5);
        system.debug('record sayisi ' + list5.size());
    for(contact c : list5){
    system.debug('f name is ' + c.FirstName);
    system.debug('last name is ' + c.LastName);
    system.debug('id is ' + c.id);
    system.debug('ac id is ' + c.AccountId);
    
    
    
    }
    
    
    }
    if(trigger.isAfter && trigger.isUpdate){
    
        list<contact> list6 = trigger.old;
        system.debug('tr new is ' + list6);
        system.debug('record sayisi ' + list6.size());
        for(contact c1 : list6){
            system.debug('f name is ' + c1.FirstName);
            system.debug('last name is ' + c1.LastName);
            system.debug('id is ' + c1.id);
            system.debug('ac id is ' + c1.AccountId);
            
            
            }
            system.debug('tetiklendiii=====');
    
    }
    
}*/
//update durumunda eski f name ile yeni f name yan yana yazmak istersem..

/*if(trigger.isBefore && trigger.isUpdate){

system.debug('tr new is ' + trigger.new);
system.debug('tr old is ' + trigger.old);
system.debug('tr newmap is ' + trigger.newmap);
system.debug('tr oldmap is ' + trigger.oldmap);
system.debug('version1 ');

for(contact c : trigger.new){
string oldfname = trigger.oldMap.get(c.id).FirstName;
string newfname = trigger.newMap.get(c.id).FirstName;
string oldlastname = trigger.oldmap.get(c.id).LastName;
string newlastname = trigger.newmap.get(c.id).LastName;


system.debug('eski isim ' + oldfname + 'new name is ' + newfname);
system.debug('eski last name  ' + oldlastname + 'new lastname is ' + newlastname);


}
//version2
system.debug('version2 ');

for(contact cc : trigger.new){

system.debug('eski isim ' + trigger.oldMap.get(cc.id).FirstName + ' yeni isim ' + cc.FirstName);
system.debug('eski lastname  ' + trigger.oldMap.get(cc.id).lastName + ' yeni lastname  ' + cc.lastName);
}
system.debug('version3 ');
for(contact ccc : trigger.old){

    system.debug('eski isim ' + ccc.FirstName + 'yeni isimm '  + trigger.newMap.get(ccc.id).FirstName);
    system.debug('eski soyad ' + ccc.lastName + 'yeni lastname'  + trigger.newMap.get(ccc.id).lastName);

}




}*/
}
