public class TaskTriggerHandler {
    public static void updateLeadNextActivityDate(list<task> ltriggerNew, list<task> lTriggerOld, map<id, task> ltriggernewmap, map<id, task> ltriggerOldmap) {
set<id> setOfLeadid = new set<id>();

for(task t : ltriggerNew){//
    
if(t.WhoId != null && t.WhoId.getSobjectType().getDescribe().getName()=='Lead' && t.ActivityDate!=null &&(lTriggerOld==null || (lTriggerOld !=null && (t.ActivityDate != ltriggerOldmap.get(t.id).ActivityDate) || (t.Status != ltriggerOldmap.get(t.id).Status)))){//

setOfLeadid.add(t.WhoId);
}
}
if(setOfLeadid.isEmpty()){
    return;
}

list<lead> allLeads = [select id,name, Next_Activity_Date__c,( select id, activitydate, status from tasks where status != 'Completed' and status != 'Deferred' order by activitydate limit 1) from lead where id in : setOfLeadid];

list<lead> newList = new list<lead>();
for(lead l : allLeads){
if(l.Tasks != null && !l.Tasks.isEmpty()){
task t = l.Tasks[0];
if(t.ActivityDate>=Date.today()){
l.Next_Activity_Date__c = t.ActivityDate;
}else{
    l.Next_Activity_Date__c = null;
}
newList.add(l);
}

if(!newList.isEmpty()){

update newList;


}

}



}




}