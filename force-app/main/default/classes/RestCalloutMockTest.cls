@istest
public with sharing class RestCalloutMockTest {
   @istest

   private static void getAnimalsTest(){

    RestCalloutsMock mock = new RestCalloutsMock();//burda mocku cagr
    Test.setMock(HttpCalloutMock.class, mock);//methodun 2 inputa ehtiyaci var//bu da kalippp...
    //2interface type instance of the mock class
  HttpResponse response =  RestCallouts1dayinclass.getAnimals(); //3clas ve method ismi
   //3run asserts
   system.assertEquals(200, response.getStatusCode());
   system.assertEquals('OK', response.getStatus());//run assertle yoxlama

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
@istest
   private static void getCaseUsingNCTest(){

      RestCalloutsMock mock = new RestCalloutsMock();
      test.setMock(HttpCalloutMock.class, mock);

      HttpResponse response = RestCallouts1dayinclass.getCaseUsingNC();

      system.assertEquals(200, response.getStatusCode());
      system.assertEquals('OK', response.getStatus());

   }
@istest
   private static void postAnimalTest(){
      RestCalloutsMock mock = new RestCalloutsMock();
      test.setMock(HttpCalloutMock.class, mock);

      HttpResponse response = RestCallouts1dayinclass.postAnimal();

      system.assertEquals(201, response.getStatusCode());
      system.assertEquals('OK', response.getStatus());

   }
}