public class OppHandlerClass2presizevideo27 {
    public static void validateOppClosed(List<Opportunity> otrnew,List<Opportunity> otrold, map<id, Opportunity> newmapopp, map<id, Opportunity> oldmap) {
//set of id
set<id> oppId = new set<id>();
//forloop
for(Opportunity opp : otrnew){
if(opp.StageName!=oldmap.get(opp.id).StageName && (opp.StageName=='Closed Won' || opp.StageName=='ClosedLost')){

oppId.add(opp.id);

}

}
//check status change///add set of id
//soql opportnty for set of id
List<Opportunity> listoppTask = [select id,stagename, (select id, status from tasks where status !='Completed'  and status!= 'Deferred') from Opportunity where id in :oppId ];
///list of opppT for loop//
for(Opportunity op : listoppTask){


if(op.tasks !=null && op.tasks.size()>0){


    Opportunity opptrnew = newmapopp.get(op.id);
    opptrnew.addError('Cannot close opp. first close all task. then close opp');
}

}
//check if tasks  has 1 record
//validate

    }
    public static void validateOppClosed(List<Opportunity> otrnew,List<Opportunity> otrold, map<id, Opportunity> newmapopp, map<id, Opportunity> oldmap) {

set<id> setids = new set<id>();
for(Opportunity op : otrnew){

if(op.StageName!=oldmap.get(op.id).StageName && (op.StageName=='Closed Won' || op.StageName=='Closed Lost')){

    setids.add(op.id);
}


}
List<Opportunity> listop = [select id, name, stagename, (select id, status from tasks where status!='Completed'and status !='Deferred') from Opportunity where id in : setids];
for(Opportunity opp : listop){

if(opp.Tasks !=null || opp.tasks.size()>0){
   Opportunity s =  newmapopp.get(op.id);
s.addError('cannot be close ');
}

}

}
}