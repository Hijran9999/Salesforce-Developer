
    public class BatchApexTurkishRevsnHomeasgnApex implements Database.Batchable<sObject>, database.stateful{
        //Tum Accountlarin isimlerinin sonuna batch 12 ekleyelim..
  public integer recordcountcontact = 0;
  public integer recordcountopp= 0;

     //start: tum data buraya cagrilir ve return edilir execute metoduna
     public Database.QueryLocator start(Database.BatchableContext bc){
    
      string query = 'Select id, name from Account';
      return Database.getQueryLocator(query);
     }
  
     //execute: belirlene sayilarla recordlarla parca parca istenen islem yapilir.
     public void execute(Database.BatchableContext bc, List<Account> scope){
         list<account> aclist  = [select id, name, (select id, lastname from contacts),(select id, name from opportunities) from account];
         list<Opportunity> listopp = new List<Opportunity>();
         List<Contact> conlist = new List<Contact>();
         for(account ac : aclist){

            if(ac.Opportunities.isEmpty()){


                Opportunity op = new Opportunity();
                op.name = 'Op test ';
                op.AccountId = ac.id;
                op.StageName= 'Closed Won';
                op.CloseDate = date.today();
                listopp.add(op);
                
            }
            if(ac.Contacts.isEmpty()){

                contact con = new contact();
                con.LastName = 'Con lastname ';
                con.AccountId= ac.id;
                conlist.add(con);
            }
         }
        try{
            if(!listopp.isEmpty()){

                insert listopp;
             }
            }catch(DmlException dx){

                system.debug(dx.getMessage());
             }
      try{ 
           if(!conlist.isEmpty()){
             insert conlist;
          }
    }catch(DmlException dx){

        system.debug(dx.getMessage());
    }

        
         

        
recordcountcontact+=conlist.size();
recordcountopp+=listopp.size();
     }
  
     //finish: tum islem bittiginde 1 kere calisir.. mesaj veya mail atabilirsiniz..
     public void finish(Database.BatchableContext bc){

       system.debug( recordcountcontact + ' sayisinda  contact olusturuldu...' + recordcountopp + ' sayisinda opportunities olusturuldu..' );

          System.debug('islem bitti');
          
}
    }
    /*Bir Account‟a bağlı; 
    - Opportunity yoksa bir opportunity, 
    - Contact yoksa bir Contact, 
    - Opportinitiy ve Contact yoksa birer Opportunity ve Contact oluşturan bir
    batchable apex tasarlayınız, finish() kısmında kaç adet Opportunity ve Contact
    oluşturulduğunu system.debug() vasıtası ile yazdırınız ve her cumartesi 02:00
    AM saatinde execute edilecek şekilde planlayınız.*/