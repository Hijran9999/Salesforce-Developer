public  class CaseHandlerClassPresizeVitap {
    public  static void createDefaulttask(list<case> CaseTrigger){
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



    }
    }

