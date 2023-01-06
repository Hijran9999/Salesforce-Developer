@istest
public  class SfTicketTestFuture {
@TestSetup
static void makeData(){
    List<Salesforce_Project__c> splist = new List<Salesforce_Project__c>();
for(integer i=0;i<3;i++){

Salesforce_Project__c spp = new Salesforce_Project__c();
spp.Project_Name__c= 'Test 1';
spp.Status__c = 'New';
splist.add(spp);

}
insert splist;
List<Salesforce_Project__c> spl = [select id, status__c from Salesforce_Project__c];
List<Salesforce_Ticket__c> sliste = new List<Salesforce_Ticket__c>();
for(Salesforce_Project__c sp2 :spl ){
Salesforce_Ticket__c n = new Salesforce_Ticket__c();
n.Salesforce_Project__c = sp2.id;
n.Status__c = 'New';
n.Subject__c = 'New';
sliste.add(n);

}
insert sliste;
}
    @istest
    private static void m1test(){

Salesforce_Project__c sl1 = [select id, status__c from Salesforce_Project__c  limit 1];

sl1.Status__c = 'Completed';
update sl1;
List<Salesforce_Ticket__c> sl = [select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c where status__c='Completed'];

system.assertEquals('Completed', sl[0].Status__c);
    }
}
