trigger OpportunityTrigger2 on Opportunity (before insert,before delete,before update,after insert, after update, after delete, after undelete) {
//Bir opportunity(insert, update, delete, undelete) nin Amount update edildiğinde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountun Description kısmına yazılsın.

//turkish revisionun koduud op yaransin amountl bagli olan 
/*if(trigger.isAfter){
//yapilan dmlden etkilenen accountlarin idlerini bir set yapida olusturalim. disinda olusdur gloabl olaarq hamsinin icinde istidfade et
set<id> accids = new set<id>();

    if(trigger.isInsert || trigger.isUndelete){
for(Opportunity op : trigger.new){
    if(op.AccountId!=null && op.Amount!=null){//amountu var accauntada bagliysa setin iicne koy
accids.add(op.AccountId);//bagli oldugu ac id varsa amount d varsa hamsi gelcek setin icine qoya


    }
}

    }
    if(trigger.isUpdate){
for(Opportunity opp : trigger.new){
    if(opp.AccountId !=trigger.oldMap.get(opp.Id).AccountId || opp.Amount!=trigger.oldMap.get(opp.Id).Amount){//eskiyle yeni farkliysa
accids.add(opp.AccountId);
accids.add(trigger.oldMap.get(opp.Id).AccountId);
    }

}

    }
    if(trigger.isDelete){
for(Opportunity  oppp : trigger.old){
    if(oppp.AccountId!=null && oppp.Amount!=null){

        accids.add(oppp.AccountId);
    }
}
    }
    if(!accids.isEmpty()){

list<account> aclist = [select id, name, description, (select id, name, amount from opportunities) from account where id in : accids];
for(account ac : aclist){

    Decimal totamnt = 0;
    for(Opportunity op : ac.Opportunities){

        totamnt+=op.Amount;
    }
    ac.Description = 'Bu accounta bagli opportunitylerin amountlari toplami = ' + totamnt;
}





update aclist;









    }
}*/




















    /*if(trigger.isAfter){


    set<id> accids = new set<id>();
if(trigger.isInsert || trigger.isUndelete){
for(Opportunity op : trigger.new){
if(op.AccountId != null && op.Amount !=null){


    accids.add(op.AccountId);
}

}


}
if(trigger.isUpdate){
    for(Opportunity opp : trigger.new){
        if(opp.AccountId!= trigger.oldMap.get(opp.id).AccountId || opp.Amount!= trigger.oldMap.get(opp.id).Amount){

accids.add(opp.AccountId);
accids.add(trigger.oldMap.get(opp.id).AccountId);

        }
    }

}

if(trigger.isDelete){
for(Opportunity opppp : trigger.old){
if(opppp.AccountId!=null && opppp.Amount!=null){

    accids.add(opppp.AccountId);
}


}
}
if (!accIds.isEmpty()) {
    List<Account> accList = [select id, name, description, (select id, name, amount from Opportunities) from account where id IN :accIds];

    for (account acc : accList) {
        Decimal totalAmount = 0;
        if (acc.Opportunities.size() == 0) {
            acc.Description = null;
        } else {
            for (opportunity op : acc.Opportunities) {
                totalAmount += op.Amount;
            }
            acc.Description = 'Bu accounta bagli opportunitylerin amountlari toplami = ' + totalAmount;
        }
        
    }
    update accList;
}

}*/

if(trigger.isAfter &&trigger.isUpdate){

    AcHandlerCretaetOpp.updateTotalAmount(trigger.new);
  }
 

  
}















    /*if(trigger.isAfter && trigger.isUpdate){



    OppHandlerClass2presizevideo27.validateOppClosed(trigger.new, trigger.old, trigger.newmap,trigger.oldMap);
}



//preszie video 21.1-ci

if(trigger.isBefore){
 if(trigger.isDelete){
system.debug('before delete trigger new ' + trigger.new);
system.debug('before delete trigger old ' + trigger.old);
system.debug('before delete trigger newmap ' + trigger.newmap);
system.debug('before delete trigger oldmap ' + trigger.oldMap);
}

if(trigger.isAfter){
    if(trigger.isDelete){
   system.debug('after delete trigger new ' + trigger.new);
   system.debug('after delete trigger old ' + trigger.old);
   system.debug('after delete trigger newmap ' + trigger.newmap);
   system.debug('after delete trigger oldmap ' + trigger.oldMap);

   }


   
   
   }
   if(trigger.isUndelete){
   system.debug('after undelete trigger new ' + trigger.new);
   system.debug('after undelete trigger old ' + trigger.old);
   system.debug('after  undelete trigger newmap ' + trigger.newmap);
   system.debug('after undelete trigger oldmap ' + trigger.oldMap);
   

   }
   
}*/