public  class AccountHandlerClassTurkishRevision {
    public static void method1(list<account> ltriggernew, list<account> ltriggerold,Map<Id,Account> triggernewmap, Map<Id,Account> triggeroldmap ) {
       
      list <account> ac = [select id, name from account];//tum akkauntlari aldim
        for(Account acc : ltriggernew){
            for(account eachac : ac){//yeni olusdurdugumz accountun idsini aldg
       //orgdsa olan acc listesini yazdrdm
        if(acc.name ==eachac.name){//bir birine esit copy olmasin


        acc.name.addError('no copy name ');//addderor yapdk
        }
        }
        }
   
   

   
    }
public static void method2(list<account> ltriggernew, list<account> ltriggerold,Map<Id,Account> triggernewmap, Map<Id,Account> triggeroldmap){
    list<contact> lcon = new list<contact>();
    List<Opportunity> oplist = new List<Opportunity>();
for(account acc : ltriggernew){
contact con = new contact();//instance
con.lastname = acc.name;
con.AccountId = acc.id;
lcon.add(con);
Opportunity op = new Opportunity();
op.name = acc.name;
op.AccountId = acc.id;
op.CloseDate=date.today();
op.StageName= 'Prospecting';
oplist.add(op);
}
insert lcon;
insert oplist;

}


//@future
public static void updateDescription(set<id> ids){
List<Opportunity> opplist = [select id, description, accountid, account.description from Opportunity where AccountId in : ids];
list<contact> conlist = [select id, accountid, description, account.Description    from contact where AccountId in : ids ];
for(Opportunity op : opplist){

    op.Description = op.Account.Description;

}
for(contact con : conlist){

    con.Description = con.Account.Description;
}

update opplist;
update conlist;
}

public static void method1(string oppname,id accid,date closedate, decimal amount,string nextstp, string stg,Campaign cmp){



Opportunity opp = new Opportunity();
opp.Name = oppname;
opp.AccountId = accid;
opp.CloseDate = closedate;
opp.StageName = stg;
opp.Amount = amount;
opp.NextStep = nextstp;
opp.CampaignId = cmp.id;//recordun idsi
 
try{
    insert opp;
}catch(dmlexceptin e){
    opp.addError('error');
}


}


public static void nw(Campaign c){

List<Opportunity> opplist = [select fields(all) from Opportunity where CampaignId in : c ];


for(Opportunity opp : opplist){
    if(opp.primary__c ==true){

       
    }
}

}

}

/*listeleri Al,
for

FUTURE METHOD
SORU 1:
Account objecti'nin description field'inde bir update işlemi
yapıldığında   o   account'a   bağlı   opportunity   ve   contact'ların
description   field'lerini   account   description   ile   aynı   olacak   şekilde
update eden bir "future method" tasarlayınız*/
