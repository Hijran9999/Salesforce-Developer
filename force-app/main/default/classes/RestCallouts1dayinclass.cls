public with sharing class RestCallouts1dayinclass {
   //Endpoint : https://th-apex-http-callout.hreokuapp.com/animals
   //HTTP Method : Get
   //response alacagq 3party sistemden
   public static HttpResponse getAnimals(){

    //1.prepare  httprequest and wrap all the data in it
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');//adres endpointdirr
    //animallarin haqda oyrenmek ucun get edrk ve httpmethodlar hemise boyuk herfle yazilir..
    request.setMethod('GET');//uje burda request preparation is over 9cusetrin bilgilerini allll
    //2 prepare internet
    Http http= new Http();


    //3.send the httprequest over the internet in order to receive httpresponse back
    HttpResponse response = http.send(request);
    //4. process httpresponse
    system.debug(response.getStatusCode());//basarili oldumu bu nullcheck kimidiiii

    system.debug(response.getBody());//responseda ne qeyd edilib gelen data pars ediloir. neyapcaksan kayd falan yapck burasi bilginin oldgu yerdi header kismi//we servise hizmet sagliyorrrrrrrrrr
return response;
   }


   //ikinci defe eyni



   public static void animalget(){

      
   }
}

//silersen
