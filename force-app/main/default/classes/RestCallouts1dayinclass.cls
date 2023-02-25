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


   //ikinci defe eyni yazdm

//htpresponse is type of response

  /* public static HttpResponse animalget(){

      HttpRequest request = new HttpRequest();
      request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');//this is about endpoint on;arin web servicinden  nw alinasidirsa animal yazilir ne lazmsdsa yazilir onu alrq
      request.setMethod('GET');

Http http = new Http();//prepare interenet

HttpResponse res = http.send(request);
system.debug(res.getBody());//succesfullufu operation ya yox response odur onlar responsda ne verir GET onu getrir
return res;

   }*/


   public static HttpResponse getAirlines(){
      //1prepare httprequest and wrap all the nec data
      HttpRequest request =  new HttpRequest();
      request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
      request.setMethod('GET');

      Http http = new Http();

HttpResponse response = http.send(request);

if(response.getStatusCode()==200){

   string jsonstring = response.getBody();
   system.debug(jsonString);
   //convert the seponse body into lost of airlns
   //uygun bisey lazmdr
//ev tapi burdan oyana
   list<AirlineWrapper> wrappers = (list<AirlineWrapper>)JSON.deserialize(jsonString, list<AirlineWrapper>.class);//classin menasi json stringi convert edirem airline o integer falan yazdgmz bu ifade wrapper class 
   list<Airline2__c> airlines = new list<Airline2__c>();
   for(AirlineWrapper wr : wrappers){
      if(wr.id!=null &&  wr.id.length() < 3){
      
      Airline2__c airline = new Airline2__c();
      airline.Name = string.valueOf(wr.id);
      airline.Country__c = wr.country;
      airline.Establish__c = wr.established;
      airline.Head_Quarters__c = wr.head_quarters;
      airline.Logo_URL__c = wr.logo;
      airline.website__c = wr.website;
      airline.name = wr.name;
      airline.slogan__c = wr.slogan;
      airlines.add(airline);
      }
   }
try{
   insert airlines;
}catch(exception e){

   system.debug(e.getMessage());
}
}
return response;

   }

   public static HttpResponse getEmployees(){

      //prepare  htprequest
      HttpRequest request = new HttpRequest();
      request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
      request.setMethod('GET');

      //2prepare internet

      Http http = new Http();
      HttpResponse response = http.send(request);

      if(response.getStatusCode()==200){//200tamammmm islemmm if empty gibi

         string jsnt = response.getBody();//aldik esas bilgiyi(data Metadata) 
         system.debug(jsnt);
      

//bu bilgiler degerlendirilmelidir.

   EmployeeResponse wrappers = (EmployeeResponse)JSON.deserialize(jsnt, EmployeeResponse.class);//classin menasi json stringi convert 
   //edirem airline o integer falan yazdgmz bu ifade wrapper class 
   //json formatini salesforcun kendi formatina donusturmeli

//datani wrapperse ekletik asshn etdik
//datadan gelen wrapperler forun icinde dondu aliram her bir recordu her user gelir tek-tek
//id integer id ona gore stringe verib namein icine qoyduq
//uzalstirmalar 125-132-ci setirlerde oldu//elemanlarin iceringini olustrb listeye ekledi
      
   list<Employee__c> listem = new list<Employee__c>();
for(EmployeeResponse.EmployeeWrapper emp : wrappers.data){


   if(emp.id!=null && emp.id <= 100){
      Employee__c empres = new Employee__c();
      empres.Name = string.valueof(emp.id);
      empres.Gender__c= emp.gender;
      empres.Email__c = emp.email;
      empres.Designation__c = emp.designation;
      empres.Phone_Number__c = emp.phone_number;
      empres.username__c = emp.username;
      empres.Complete_Address__c = emp.complete_address;
      empres.Name__c= emp.name;
      listem.add(empres);

   }
}
try{
   insert listem;
}
catch(exception e){

   system.debug(e.getMessage());
}
}   
   return response;
   
}
//apiden bilgileri alib onlari json formatindan salesforcun kendi formatina donustrb record olustr


// https://vivashine-dev-ed.develop.lightning.force.com/services/apexrest/Cases/5004x00000Okf0FAAR
//http method get



//callouta basladq
public static HttpResponse getCaseUsingNC(){
   //1. Prepare HttpRequest and wrap all the necessary data in it.


   HttpRequest request = new HttpRequest();
   request.setEndpoint('callout:Nc_dev_Account/services/apexrest/Cases/5004x00000Okf0FAAR');//name credential varsa codu copya etme adin source orgundan gotur 

   request.setMethod('GET');
   //2. Prepare Internet

   Http http = new Http();

   
   //3. Send the HttpRequest over the internet in order to receive HttpResponse back

   HttpResponse response = http.send(request);
   //4. Process HttpResponse
system.debug(response.getStatusCode());//code status and body
system.debug(response.getStatus());
system.debug(response.getBody());
return response;
}
/*public static HttpResponse getcs(){

HttpRequest request = new HttpRequest();
request.setEndpoint('callout:Nc_dev_Account/services/apexrest/Cases/5004x00000OlQBwAAN');


request.getMethod('GET');
Http http = new Http();


HttpResponse response = http.send(request);


system.debug(response.getStatusCode());
system.debug(response.getStatus());
system.debug(response.getBody());
return response;




}*/

 //Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: POST

public static HttpResponse postAnimal(){

 //1. Prepare HttpRequest and wrap all the necessary data in it.
HttpRequest request =  new HttpRequest();

request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
request.setBody('POST');
string body = '{"name":"mighty moose"}';
request.setBody(body);
request.setHeader('Content-Type', 'application/json;charset=UTF-8');//we have set some content tyope is app json utf 8 content hazirlamak ve set yapmak
  //2. Prepare internet

  Http http = new Http();

        //3. Send the HttpRequest over the internet in order to receive HttpResponse back

        HttpResponse response = http.send(request);

        //4. Process HttpResponse

        if(response.getStatusCode()==201){

         system.debug('request has been processes succesfully!');
        }else{

         system.debug('went wrong inform ' + response.getBody());
        }
        return response;
}

/*public static HttpResponse postAnimal(){


   HttpRequest request = new HttpRequest();

   request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
   request.setMethod('POST');
   string body = '{"name":"mighty moose"}';
   request.setBody(body);

   request.setHeader('Content-Type', 'appliaction/json;charset=UTF-8');//what type of conent u want izha kimidi utf 8 default one
//bodyni set edende setheadre ehtiyac var

Http http = new Http();
HttpResponse response = http.send(request);
if(response.getStatusCode()==201){

   system.debug('request has been processed succesfully');
}
else{

   system.debug('went wrong: ' + response.getBody());
}
return response;



}*/


}






//1htpr request prepare/\\2ci internet prepare//3cu response request// 
//yolla sendr
//4process response 
//bu prosesle deserialize