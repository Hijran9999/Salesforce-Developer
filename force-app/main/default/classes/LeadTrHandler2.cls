public class LeadTrHandler2 {
    public static void updateDates (list<lead> ltriggerNew, list<lead> ltriggerold, Map<Id,Lead> triggernewMap,map<id, lead> triggerOldMap) {



    }
public static void checkLostReason(list<lead> ltriggerNew, list<lead> ltriggerold, Map<Id,Lead> triggernewMap,map<id, lead> triggerOldMap){

for(lead eachl : ltriggerNew){
    
if((ltriggerold == null) ||
  (ltriggerold !=null && eachl.Status != triggerOldMap.get(eachl.id).Status)){


    if(eachl.Status=='Closed - Not Converted' && eachl.Closed_Lost_Reason__c == null){
        eachl.Closed_Lost_Reason__c.addError('Tell us why not converted . Now !!');
        
        }
        


}
}

}



}
