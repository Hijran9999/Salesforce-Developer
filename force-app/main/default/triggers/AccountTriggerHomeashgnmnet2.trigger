trigger AccountTriggerHomeashgnmnet2 on Account (before insert,before update,after insert,after update) {
    /*if(Trigger.isBefore && trigger.isInsert){
        for(Account eachacc : trigger.new){
            if(eachacc.Active__c == 'Yes'){
                eachacc.Description = 'Account is active';
            }
            if(eachacc.Active__c == 'No'){
                eachacc.Description = 'Account is Inactive';
            }
        }
    }
    if(Trigger.isBefore && trigger.isUpdate){
        for(Account eachac : trigger.new){
            if(eachac.Active__c == 'Yes'){
                eachac.Description = 'Account is active';
            }
            if(eachac.Active__c == 'No'){
                eachac.Description = 'Account is Inactive';
            }

    }







}*/
}




/*if(trigger.isBefore && trigger.isInsert){
    system.debug('before insert===');
  
  for(account eachAcc : trigger.new){
  
  if(eachacc.Active__c == 'Yes'){
  
      eachacc.Description = 'Account is active';
  }
  
  if(eachacc.Active__c == 'No'){
  
  
      eachacc.Description = 'Account is inactive';
  }
  }
  if(trigger.isUpdate){
  system.debug('==before update===');
  for(account eachacn : trigger.new){
  if(eachacn.Active__c == 'Yes'){
  
      eachacn.Description = 'Account is active';
  }
  
  if(eachacn.Active__c == 'No'){
  
  
      eachacn.Description = 'Account is inactive';
  }
  
  
  }
  
  }
      }*/