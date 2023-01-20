public  class Queuebleturkish implements Queueable {
    
//annualrevenusi 10000 olan accountlara bagli olan cocntactalrin lead sourcenu 'partner refereal' yapin
    //soqlla yapilacak recordlari cagirmam gerekiyor.


    public list<account> aclist = [select id, name,(select id,leadsource from contacts) annualrevenue from account where AnnualRevenue = 10000];

    //execute

    public void execute(QueueableContext qc){
system.debug('quebleturkish calisdi..');
list<contact> conlist  = new list<contact>();
for(account ac : aclist){
    con.addAll(ac.Contacts);
}
for(contact cn : conlist){
    cn.LeadSource = 'Partner Referral';
}
update conlist;

system.enqueueJob(new Queble123());
    }
}
