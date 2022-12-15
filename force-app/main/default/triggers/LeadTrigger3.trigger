trigger LeadTrigger3 on Lead (before insert,after insert, before update, after update) {



    if(trigger.isBefore){

LeadTrHandler2.checkLostReason(trigger.New, trigger.old, trigger.newMap, trigger.OldMap);
    }
}