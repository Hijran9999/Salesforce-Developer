@istest
public with sharing class RestCalloutMockTest {
   @istest

   private static void getAnimalsTest(){

    RestCalloutsMock mock = new RestCalloutsMock();
    Test.setMock(HttpCalloutMock.class, mock);//methodun 2 inputa ehtiyaci var
    //2interface type instance of the mock class
  HttpResponse response =  RestCallouts1dayinclass.getAnimals(); 
   //3run asserts
   system.assertEquals(200, response.getStatusCode());
   system.assertEquals('OK', response.getStatus());

   }

   @istest
   private static void getAirlinestest2(){
    RestCalloutsMock mock = new RestCalloutsMock();
    test.setMock(HttpCalloutMock.class, mock);
    //test the mock
  HttpResponse response =  RestCallouts1dayinclass.getAirlines();
  
  system.assertEquals(200, response.getStatusCode());
  system.assertEquals('OK', response.getStatus());


   }
   @istest
   private static void getEmployeetest(){

      //set the mock
      RestCalloutsMock mock = new RestCalloutsMock();
      test.setMock(HttpCalloutMock.class, mock);
      //testmock
      HttpResponse response = RestCallouts1dayinclass.getEmployees();
      //run asserts

      system.assertEquals(200, response.getStatusCode());
      system.assertEquals('OK', response.getStatus());
    
   }
} 