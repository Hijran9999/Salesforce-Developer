trigger EmployeeTrigger on Employee11__c (before insert,after insert) {
if(trigger.isInsert && trigger.isAfter){

    for(employee11__c e : trigger.new){

EmployeeCallout.postEmployee(e.id);//triggernewdan recordlar geldigi zaman tek tek recordlar yollanicak...

    }
}
}