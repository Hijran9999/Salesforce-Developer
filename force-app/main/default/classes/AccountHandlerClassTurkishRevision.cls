public  class AccountHandlerClassTurkishRevision {
    public static void method1(list<account> ltriggernew, list<account> ltriggerold,Map<Id,Account> triggernewmap, Map<Id,Account> triggeroldmap ) {
       
      list <account> ac = [select id, name from account];//tum akkauntlari aldim
        for(Account acc : ltriggernew){//yeni olusdurdugumz accountun idsini aldg
        for(account eachac : ac){//orgdsa olan acc listesini yazdrdm
        if(acc.name == eachac.name ){//bir birine esit copy olmasin


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
}
