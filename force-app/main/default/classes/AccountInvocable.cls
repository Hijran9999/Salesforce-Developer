public class AccountInvocable {
@invocablemethod(label='Close Opportunities'
description='This method going to update the stagename of all opportunities under the given account to closed lost'
Category= 'Opportunity')

public static void closeOpps(list<id> acids){

   //query all the opps under the given accounts
   List<Opportunity> listop = [select id, name, stagename, accountid from Opportunity where AccountId in : acids and stagename not in ('Closed Won', 'Closed Lost')];

   for(Opportunity opp : listop){
opp.StageName = 'Closed Lost';

   }
   if(!listop.isEmpty()){
    try{

        update listop;
    }catch (Exception e){
        //create log
    }
   }

}
//bu asagida short video

/*@invocableMethod(label = 'Delete Opportunities'
description = 'Deletes all the closed opps'
category = 'Account')

public static void deleteopps(list<id> acid){

    List<Opportunity> opps = [select id from Opportunity where AccountId in : acid and Stagename Not In ('Closed Won','Closed Lost')];

    delete opps;



}*/

/*@invocablemethod( label= 'Closed Opps'
description= ' This method is going to update the stagename of all opps under the given account to closed lost'
category= 'Account')//birinci annotationu yarat 
public static void closeOpp(list<id> accountIds){
List<Opportunity> opps = [select id, stagename from Opportunity where AccountId in : accountIds  and Stagename Not In ('Closed Won','Closed Lost')];

for(Opportunity opp : opps){

    opp.StageName = 'Closed Lost';
}
if(!opps.isEmpty()){

    try{
        update opps;
    }catch(exception ex ){
        //create log
    }
}
}*/
    
}