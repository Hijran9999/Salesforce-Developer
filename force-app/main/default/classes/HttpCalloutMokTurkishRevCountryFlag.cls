public with sharing class HttpCalloutMokTurkishRevCountryFlag  implements HttpCalloutMock{//request paramter olarak aliyor
    public HttpResponse respond(HttpRequest request){
//response create edicez...
HttpResponse response = new HttpResponse();
response.setStatusCode(200);
response.setStatus('OK');


response.setHeader('Content-Type', 'application/json');
response.setBody('');//datadan bir ulkenin verisini qoy
return response;//deploy edin classi

    }


    //testi de boyle olucak ama ayri clasda men burda qarisdidrm tekrardi deye
@istest
    private  static  void getCountryTest(){

        HttpCalloutMokTurkishRevCountryFlag mock = HttpCalloutMokTurkishRevCountryFlag();
        test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response  = CountryFlags122.getCountries();


        system.assertEquals(200, response.getStatusCode());//control islemi assertle yapilir...kontrolller (get)leolur.
        system.assertEquals('OK', response.getStatus());
    }
}