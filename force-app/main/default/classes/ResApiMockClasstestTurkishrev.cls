@istest
public with sharing class ResApiMockClasstestTurkishrev {
   @istest
private static void getCountryFlagTest(){
    GetFlagCountry12CalloutsMock mockk = new GetFlagCountry12CalloutsMock();
    Test.setMock(HttpCalloutMock.class, mockk);//methodun 2 inputa ehtiyaci var

  HttpResponse response =  CountryFlags12.getCountry();
  system.assertEquals(200, response.getStatusCode());
  system.assertEquals('OK', response.getStatus());

}


}