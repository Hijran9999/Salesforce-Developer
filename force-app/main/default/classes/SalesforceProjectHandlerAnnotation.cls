public  class SalesforceProjectHandlerAnnotation {
    @invocableMethod
    public static void updateStatus(List<id> idset){
List<Salesforce_Ticket__c> listids =[select id, name, status__c from Salesforce_Ticket__c where  Salesforce_Project__c in : idset];
List<Salesforce_Ticket__c> listt = new List<Salesforce_Ticket__c>();
for(Salesforce_Ticket__c ticket : listids){

    ticket.Status__c = 'Completed';
    listt.add(ticket);
}
update listt;
    }
}
