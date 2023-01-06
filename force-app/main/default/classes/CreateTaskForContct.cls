public class CreateTaskForContct {
    public static  void createTasks(string  contactLastname) {
        string queryString = 'Select id, name from contact where lastname like /%' +contactlastname + '%/';
list<contact> alcon = Database.query(queryString);
list<task> tlist = new list<task>();
for(contact c : alcon){
    task t = new task();
    t.WhoId = c.id;
    t.Subject  ='Email';
    t.Description = 'a task computer';
    t.ActivityDate = date.today();
    tlist.add(t);

}
if(!tlist.isEmpty()){
    insert tlist;
}
    }
   public static void createOpps(list<contact> lcon){
List<Opportunity> listopp = new List<Opportunity>();
for(contact c : lcon){
    Opportunity op = new Opportunity();
    op.name = 'op for contact ' + c.name;
op.StageName = 'New';
op.CloseDate = date.today();
op.AccountId = c.id;
listopp.add(op);

}
if(!listopp.isEmpty()){
    insert listopp;
}
    }
}
