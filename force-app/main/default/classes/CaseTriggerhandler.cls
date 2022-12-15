public  class CaseTriggerhandler {
    public static void printingStatusDetails(list<case> casetriggerNew, list<case> oldCaseTrigger, map<id,case> caseTriggernewMap,map<id,case> casetriggerOldMap ){
if(oldcasetrigger==null){
    
    for(case eachCase : CaseTriggernew){


        system.debug('stage name set to : ' + eachCase.Status);
    }
}
if(oldCaseTrigger!=null){
    //check if status
    //if it is
    //print status update to-----
    for(case eachcasee : casetriggernew){
    
        //get old value
       case oldcase = casetriggerOldMap.get(eachcasee.id);//olmapda genelde id istyrler cagranda value kimi
        if(eachcasee.Status!=oldcase.status){
    
    system.debug('status updated to ' + eachCasee.Status + ', from ' + oldCase.Status);
    
        }
    
    }
    
}
    



    }
}
