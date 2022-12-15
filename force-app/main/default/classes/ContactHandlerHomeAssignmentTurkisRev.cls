public class ContactHandlerHomeAssignmentTurkisRev {
    public  static void updateDescription(list<contact> ltriggernew, list<contact> ltriggerold, map<id,contact> triggernewMap, Map<Id,Contact> triggerOldMap) {
for(contact eachcon : ltriggernew){

if(eachcon.LastName != triggerOldMap.get(eachcon.id).LastName){

eachcon.Description = triggerOldMap.get(eachcon.id).LastName + ' yeni ile ' + eachcon.LastName + ' ile  deyistirldi.';

}

}
    }

}
