public class AccConTryCath {
    public static void voidacmethr(list<account> trnew, list<account>trold, Map<Id,Account> trnewmap, Map<Id,Account> trooldmap){
try{

list<contact> listcon = new list<contact>();

for(account acc : trnew){



    contact con =new contact();
    con.lastname = 'Contact 1';
    con.AccountId = acc.id;
    listcon.add(con);
}
if(!listcon.isEmpty()){
    insert listcon;
}
}catch(exception e){

    system.debug('exception error ' + e.getMessage());
    system.debug('exception error line ' + e.getLineNumber());

    for(account acc : trnew){

        acc.addError('error here. contact ur admin..');
    }
}

    }
}
/*status of field on Contact as Required.  
1. On Account Trigger, for before insert try to create a contact record.  
2. Make status field as Required on the Contact Object.  
3. Throw an error message in catch if the status is missing from the trigger. */