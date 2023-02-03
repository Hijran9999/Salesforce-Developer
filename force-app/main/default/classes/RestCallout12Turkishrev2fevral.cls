public with sharing class RestCallout12Turkishrev2fevral {

  /*  public static void getUser(){
//request olustur
HttpRequest request = new HttpRequest();
request.setEndpoint('https://regres.in/api/users/2');
request.setMethod('GET');
//bunu apiye gonderib dondurdugu  degeri yani response degerni alalim
Http  http = new Http();//return etsen typni void yerine yazardik

HttpResponse response = http.send(request);
system.debug('get statusCode=> ' +response.getStatusCode());
system.debug('Get body => ' + response.getBody());
system.debug('get status => ' + response.getStatus());



//bir data   gelirse datanin icindeki veriler goruntulemnme


if(response.getStatusCode()==200){
    string jsonUser = response.getBody();//bodim jsonunuserin icinde

    //jsonformattan normal formaa cek

    JSON.deserializeUntyped(jsonUser);
    map<string,object> userValue = (map<string,object>)JSON.deserializeUntyped(jsonuser);

    system.debug('veri /> ' + uservalue);
    system.debug('data => ' + uservalue.get('data'));
    system.debug('data => ' + userValue.get('support'));
//birinci datayi ve support adliyi aldik
   map<string,object> userInfo = ( map<string,object>) userValue.get('data');
   system.debug('id => ' + userInfo.get('id'));
   system.debug('firstname => ' + userInfo.get('first_name'));
   system.debug('lastname => ' + userInfo.get('last_name'));
   system.debug('email => ' + userInfo.get('email'));
//obje bellli deyilse map gerekli
   //fieldler alindi
}

    }*/
}