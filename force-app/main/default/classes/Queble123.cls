public class Queble123 implements Queueable {
    public list<account> aclist = [select id, name, annualrevenue,(select id, leadsource, description from contacts where leadsource= 'Partner Referral')from account where AnnualRevenue = 10000];


    public void execute(QueueableContext qc ){
        system.debug('queble calisti');
        list<contact> conliste = new list<contact>();
        for(account acc : aclist){

            conliste.addAll(acc.Contacts);
        }
        for(contact c : conliste){
            c.Description = 'Queble chain';

        }
        update conliste;
    }
}
