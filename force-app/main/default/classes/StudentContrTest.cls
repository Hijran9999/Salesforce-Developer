@isTest
public with sharing class StudentContrTest {
    @isTest 
   public static void  studentTest(){

  
        List<Student1__c> std = new  List<Student1__c>();
        for (Integer i=0; i<4; i++){
            Student1__c st = new student1__c();
            st.Postal_code__c = '5000'+i;
            st.Student_Name__c = 'Ahmet'+i;
            st.Class__c = i;
            std.add(st);
        }

        if(!std.isEmpty()){
            insert std;
        }   
        
        Test.startTest();

        List<Student1__c> retn = StudentController.searchStudentsByPostalCode('5000');
    
        system.assertEquals('50000', retn[0].Postal_Code__c);
    
        System.assert(retn.size()!=0);
    
        Test.stopTest();
   }
}
    