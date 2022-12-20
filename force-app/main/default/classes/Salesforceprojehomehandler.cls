public  class Salesforceprojehomehandler {
    
        /*public static void method2(List<Salesforce_Project__c>ltriggernew,List<Salesforce_Project__c>ltriggerold, Map<Id,Salesforce_Project__c>oldmap, Map<Id,Salesforce_Project__c> newmap) {
    
    List<Salesforce_Ticket__c> lists = new List<Salesforce_Ticket__c>();
    set<id> ids = new set<id>();
    for(Salesforce_Project__c sp : ltriggernew){
        if(sp.Status__c == 'Completed'){
    
    ids.add(sp.id);
    
        }
    }
    if(!ids.isEmpty()){
    
    lists = [select id, name, Salesforce_Project__c from  Salesforce_Ticket__c where Salesforce_Project__r.id = :ids ];
    for(Salesforce_Ticket__c st : lists){
    
    st.Status__c = 'Completed';
    }
    }
    update lists;
    
    
        }*/














    }
    //1.Write trigger on Salesforce Project Object. 
    //2.When Salesforce Project status is completed. Then query all salesforce tickets which is not completed(status). 
    //3.Make Salesforce Ticket status completed

