@istest
public  class SalesForceTriggerHandlerTest {
    @istest
 private static void createDefTicketTest(){
List<Salesforce_Ticket__c> ls = new List<Salesforce_Ticket__c>();

    Salesforce_Ticket__c h = new Salesforce_Ticket__c();
    h.Subject__c ='Default ST';
    h.Salesforce_Project__c = ec.id;
    ls.add(h);


insert ls;

List<Salesforce_Ticket__c> listem = [select id,subject__c from Salesforce_Ticket__c where Subject__c='Default ST' limit 1];

system.assertEquals(1, listem.size());
 }
 
}
