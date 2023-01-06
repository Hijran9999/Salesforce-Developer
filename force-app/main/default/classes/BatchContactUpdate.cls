public class BatchContactUpdate implements Database.Batchable<SObject>,Database.stateful {
    public Database.QueryLocator start(Database.BatchableContext bc){

      
Database.QueryLocator q1 = database.getQueryLocator([select id, lastname, description, accountid, account.description from contact where AccountId!=null]);

return q1;   

    }
    public void execute(Database.BatchableContext bc, list<contact> scope){

list<contact> conliste = new list<contact>();
for(contact con : scope ){
con.Description = con.Account.Description;
conliste.add(con);
}

update conliste;
    }
    public void finish(Database.BatchableContext bc){

        system.debug('execute calisdi.. count defa ');


    }
}
