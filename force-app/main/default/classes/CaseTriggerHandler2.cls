public class CaseTriggerHandler2 {
   public static void caseOriginUpdate(list<case> triggerNewCase,map<id,case> triggerOldMapCase){
for(case eachCase : triggerNewCase){
if(eachCase.Origin !=  triggerOldMapCase.get(eachcase.id).Origin){

system.debug('case origin is changed ' + eachCase.CaseNumber);



}



}



   }
}
