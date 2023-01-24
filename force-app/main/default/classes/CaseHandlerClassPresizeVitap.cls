public  class CaseHandlerClassPresizeVitap {
  /*  public  static void createDefaulttask(list<case> CaseTrigger){
//create task list
list<task> createtasks = new list<task>();

// for loop//
for(case eachcase :  caseTrigger){
//createtask
task taskk = new task();
taskk.WhatId = eachcase.id;
taskk.WhoId = eachcase.ContactId;
taskk.Priority = 'Normal';
taskk.Subject = 'Email';
taskk.ActivityDate = date.today();
createtasks.add(taskk);

}
if(!createtasks.isEmpty()){


    insert createtasks;
}


//set fields//addtasklist //insert task list



    }*/


    public static void createTaskAndCase(list<lead> trnew){

list<case> listcase = new list<case>();
list<task> listtask = new list<task>();

for(lead ld : trnew){

case c =  new case ();

c.Subject= 'Lead Created';
c.Description = 'This case has been created upon creating a case';
c.Status='New';
c.Priority=  'High';
c.Origin = 'Web';
c.Lead__c= ld.id;
listcase.add(c);

}

insert listcase;

for(case cs : listcase){

    task tsk = new task();
    tsk.Subject = 'Lead Created';
    tsk.ActivityDate = date.today().addDays(2);
    tsk.Priority = 'Normal';
    tsk.Description = 'This task has been created because of a lead creation';
    tsk.WhatId = cs.Id;


    listtask.add(tsk);
}

insert listtask;
    }
    }

