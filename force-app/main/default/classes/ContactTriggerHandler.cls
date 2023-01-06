
        
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
               string customMsg = system.label.contact_validation2;//adderror fieldidi deyisdirme mesaj kimi
                eachcon.LeadSource.addError(customMsg);
                
                }
                }
                
                
                }
        }
      
        
        
        
    

