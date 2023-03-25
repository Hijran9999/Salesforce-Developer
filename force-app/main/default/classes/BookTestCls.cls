@isTest
public with sharing class BookTestCls {
    @isTest
   private static void bookTest(){

       list<Book__c> lb = new list<Book__c>();
       for(integer i=1;i<10; i++){
         
        Book__c b = new Book__c();
        b.Book_Name__c = 'Benjamin' +i;
        b.Price__c = 500;
        b.Sayfa_sayisi__c = 600;
        lb.add(b);
       }
       
       if(!lb.isEmpty()){
        insert lb;
       }

       
       Test.startTest();

          list<Book__c> ls = BookController.listBook('Benjamin');

          system.assertEquals('Benjamin1', ls[0].Book_Name__c);
       Test.stopTest();

   }
}