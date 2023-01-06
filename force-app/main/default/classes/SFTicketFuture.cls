public  class SFTicketFuture {
    public static void m1(List<Salesforce_Project__c> trnew){

set<id> setids = new set<id>();
for(Salesforce_Project__c sp : trnew){

if(sp.Status__c!=null && sp.Status__c=='Completed'){

    setids.add(sp.Id);//sete atdi
}
}
m2(setids);
    }
//@future
public static void m2(set<id> setid){

    List<Salesforce_Ticket__c> slist = [select id, salesforce_project__c, status__c from Salesforce_Ticket__c where Salesforce_Project__c in : setid];
    for(Salesforce_Ticket__c spp : slist){

        spp.Status__c = 'Completed';

    }
    update slist;
}


}

/*.Create a future method with parameter (pass salesforce project id’s) 
2.Query Salesforce Ticket based on project id’s and Salesforce Project status = ‘Completed’ 
2.Then make salesforce ticket Status completed. 
3.Write test class to cover above class.*/