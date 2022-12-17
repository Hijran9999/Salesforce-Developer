
        
        public class ContactTriggerHandler {
            public static void updateContactValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
                                            Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
                
               
                
                                                for (contact eachContact : conTriggerNew) {
                                                    contact oldcon = conTriggerOldMap.get(eachContact.id);
                    if (oldcon.LeadSource == 'Partner Referral') {
                        eachContact.LeadSource.addError('Cannot update Partner Referral contact');
                    }
                }
            }
            public static void contactValidationUpdat2(list<contact> cnttriggerNew, list<contact> cnttriggerold,Map<Id,Contact> triggeroldconmap, Map<Id,Contact> triggerNewmap){

                for(contact eachCon : cnttriggernew){
                if(eachcon.LeadSource != triggeroldConMap.get(eachcon.id).LeadSource){
                
                eachcon.LeadSource.addError('cannot update lead source do not change ..');
                
                }
                }
                
                
                }
        }
        
        
        
        
    

