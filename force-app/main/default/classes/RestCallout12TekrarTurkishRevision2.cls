public with sharing class RestCallout12TekrarTurkishRevision2 {
    public  static void getUser(){
        //1 request olusturma
HttpRequest request = new HttpRequest();
request.setEndpoint('https://reqres.in/api/users');//remote site eledim icaze verdi autohrztanina
request.setMethod('GET');

//2 bu requesti apiye gonderib dondurdugu degeri yani response degerini alma
Http ht = new Http();
Httpresponse response = ht.send(request);
system.debug('Get status => ' + response.getStatus());
system.debug('Get status code => ' + response.getStatusCode());
system.debug('Get Body => ' + response.getBody());
//3 bir data gelirse bu datanin icindeki verileri goruntulemek

if(response.getStatusCode()==200){
    string jsonUser = response.getBody();
   map<string, object> userValue=(Map<String,Object>) JSON.deserializeUntyped(jsonUser);//neye donusdu map formatna
   system.debug('Veri cek user value => ' +userValue);
   system.debug('data => ' + userValue.get('data'));
   system.debug('data => ' + userValue.get('support'));

 Map<String,object> userInfo=  (map<string, object>)userValue.get('data');
 system.debug('id = ' + userInfo.get('id'));

 system.debug('first name = ' + userInfo.get('first_name'));
 system.debug('last name = ' + userInfo.get('last_name'));
 system.debug('email = ' + userInfo.get('email'));//deploy edende datanin icindeki verilere ulasmis olucaz


}


    }
}