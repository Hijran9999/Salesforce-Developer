public with sharing class Employetrhandler {
   
    public static void afterinsert(List<Employee__c> newEmployee) {
        for (Employee__c employee : newEmployee){
            EmployeeCallout.postEmployee(employee.Id);
            
        }
    }

}