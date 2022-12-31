@istest
public  class SalesforceProjecthandlerTest {
    @istest
  private static void createdefticketTest() {
List<Salesforce_Project__c> listsp = new List<Salesforce_Project__c>();
for(integer i=0; i<3;i++){

    Salesforce_Project__c sp = new Salesforce_Project__c();
    sp.Project_Name__c='Def Ticket' + i;
   // insert sp;=
    listsp.add(sp);
}
test.startTest();
    insert listsp;
    test.stopTest();

list<Salesforce_Ticket__c> ticketList  =[select id,subject__c,Salesforce_Project__c from Salesforce_Ticket__c where Subject__c='Default ST'];
system.assertEquals('Default ST', ticketlist[0].Subject__c);
  }
  //////////
  @istest
  private static void completeSpValidationTest(){

List<Salesforce_Project__c> lstsp = new List<Salesforce_Project__c>();
for(integer i=0; i<2;i++){
    Salesforce_Project__c n = new Salesforce_Project__c();
    n.Project_Name__c = 'Test 1';
    n.Status__c= 'In Progress';
    lstsp.add(n);

}
test.startTest();
insert lstsp;
test.stopTest();
List<Salesforce_Project__c> liste = new List<Salesforce_Project__c>();
 List<Salesforce_Project__c> n = [select id, status__c from Salesforce_Project__c];
 for(Salesforce_Project__c sp : n){

sp.Status__c = 'Completed';
liste.add(sp);

 }
 update liste;
 //system.assertEquals(2,n.size());
  }

}
