trigger OpportunityTrigger on Opportunity (before insert, after insert, before update,after update) {
        /*list<task> createTask = new list<task>();
            
     for(opportunity opp : trigger.new ) {
      if(opp.stagename=='Closed Won' && opp.Amount>=100000000){
                    
                    task tskkk = new task();
                    tskkk.WhatId = opp.Id;
                    tskkk.Subject = 'Follow Up Test Task';
                    createTask.add(tskkk);
                    
                    
                }
                
               
                
            }   
            
            if(!createtask.isEmpty()){
               insert createTask;  */
         
           
            
    //before insert olunca triggernew gelmez id almiyor..Oportunty objesinde task olusdurma..record opp bir firsattir.amountunu falan task olusdur takib et.




//wednesday 1ci soru1cicevab
/*if(trigger.isBefore && trigger.isUpdate){
for(Opportunity eachopp : trigger.new){


system.debug('name is ' + eachopp.name + ' amount is ' + eachopp.Amount);
system.debug('id is ' + eachopp.Id );
system.debug(' old name is ' + trigger.oldMap.get(eachopp.Id).name + ' amount is ' + trigger.oldMap.get(eachopp.id).Amount);

}
*/

/*if(trigger.isBefore && trigger.isUpdate){


   OpportunityHandlerClass2.opportunityStagenameUpdate(trigger.new, trigger.oldmap);
}*/
}
















