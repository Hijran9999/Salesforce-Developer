public  class AccountTriggerHandlerClass2 {
    public static void updaterevenue(list<account> ltriggernew, Map<Id,Account> triggerOldmap) {

for(account eachacc : ltriggernew){


if(eachacc.AnnualRevenue != triggerOldmap.get(eachacc.id).AnnualRevenue && eachacc.AnnualRevenue > triggerOldmap.get(eachacc.id).AnnualRevenue){
eachacc.Description = 'Fark artdi ' + (eachacc.AnnualRevenue -triggerOldmap.get(eachacc.id).AnnualRevenue) + ' bu kadar';
}
if(eachacc.AnnualRevenue != triggerOldmap.get(eachacc.id).AnnualRevenue && eachacc.AnnualRevenue< triggerOldmap.get(eachacc.id).AnnualRevenue){

    eachacc.Description = 'Annual revenue azaldi ' + (triggerOldmap.get(eachacc.id).AnnualRevenue - eachacc.AnnualRevenue);
}





}




    }
}
