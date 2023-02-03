public with sharing class UpdateSalesforceTicketInvocable {
  @invocableMethod(label='Completed Tickets'
  Description= 'Child olan tum ticketlerin statulerini completed yapma'
  category= 'Salesforce Project')

  public static void completedTickets(list<id> spids){
List<Salesforce_Ticket__c> stlist = [select id,status__c from Salesforce_Ticket__c where Salesforce_Project__c in : spIds and status__c !='Completed'];

for(Salesforce_Ticket__c st : stlist){
    st.Status__c = 'Completed';
}
try{
update stlist;
}catch(exception e){
    system.debug(e.getMessage());
}
  }


  //invocabemethod kullandikkkkkkkkk



  @invocableMethod(label= 'Completed Tickets'
  Description= 'Child olan tum ticketlerin statulerini completed yapma'
  category= 'Salesforce Project')
  public static void completedTickets1(list<id> spids1){

//salesforce project idlerine bagli tum ticketleri soqlla liste halinde getir..

//2ci bunu listeyi for dongusu icine qoyub statuslarini completed yapalim.
//3cu olarak bu listeyi update edelim..
//evde ozum yazdmmmmmmmmmm tezeden

List<Salesforce_Ticket__c> stlist = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in : spids1 and status__c != 'Completed'];


for(Salesforce_Ticket__c st : stlist){


  st.Status__c = 'Completed';
  
}

try{

  update stlist;
}

catch(exception e){
  system.debug(e.getMessage());
}
  }
}
