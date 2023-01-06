public class FutureDemo12 {
   public static void updateDesHelper(list<account> trnew, map<id,account> actroldmap){

//set olustur
set<id> ids = new set<id>();
for(account acc : trnew){

    if(acc.Description!= actroldmap.get(acc.id).Description){
ids.add(acc.id);
    }
}
if(!ids.isEmpty()){
updes2(ids);
}
   }




/*@Future
public static void updateDescription(set<id> idlist){
list<account> aclist = [select id, name, description,(select id, description from contacts), (select id, name, description from Opportunities) from account where id  in : idlist];
list<contact> conlist = new list<contact>();
list<Opportunity> oplist = new List<Opportunity>();
for(account ac : aclist){
for(contact con : ac.Contacts){

    con.Description = ac.Description;
    conlist.add(con);
}
for(Opportunity op : ac.Opportunities){
    op.Description = ac.Description;
    oplist.add(op);
}
}
update conlist;
update oplist;
}*/

public static void updes2(set<id>idlist){

    list<contact> conlist = [select id, accountid, description, account.description from contact where accountid in : idlist];
for(contact c : conlist){

c.Description = c.Account.Description;

}
update conlist;
List<Opportunity> listopp = [select id, description, account.description  from Opportunity where AccountId in : idlist];
for(Opportunity op : listopp){
op.Description = op.Account.Description;
}
update listopp;

}

}
