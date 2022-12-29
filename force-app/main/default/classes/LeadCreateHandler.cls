public class LeadCreateHandler {
    public static void updateCloseLostdate(list<lead> ltriggernew, list<lead> oldtrigger, map<id,lead> ltriggernewmap, map<id,lead> ltriggerOldmap) {
boolean isUpdateDate = false;
       
for(lead eachlead : ltriggernew){
    if(oldtrigger== null){
isUpdatedate = true;


        }

if(oldtrigger !=null){

    if(ltriggerOldMap.get(eachlead.id).status !=eachlead.status){
        isupdateDate = true;
    }
}



if(isUpdateDate){
    switch on eachLead.Status {
        when null{
            eachlead.Created_date__c = Datetime.now();
            
        }when ''{
            eachlead.Created_date__c = Datetime.now();

        }
        when  'Open - Not Contacted'{
           
        
                eachlead.Created_date__c = Datetime.now();
        }
        

     
        when 'Working - Contacted'{
    eachlead.Contacted_Date__c = Datetime.now();
        
        }
        when 'Closed - Converted'{
            eachlead.Closed_Won_Date__c = Datetime.now();
        }      

        when 'Closed - Not Converted'{
    eachlead.Closed_Lost_Date__c = Datetime.now();
        }
    }

}
}
}
    
    
    
    
    
    
    //if ststus =contacted
    //scontacted date today
    //if status is open '
    //cretd date 
    //if ststus = closed won
    //closed won dat= now
}