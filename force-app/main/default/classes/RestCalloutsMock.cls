public with sharing class RestCalloutsMock implements HttpCalloutMock {
    public HttpResponse respond(HttpRequest request){
if(request.getEndpoint() =='https://th-apex-http-callout.herokuapp.com/animals' && request.getMethod()=='GET'){
    HttpResponse response = new HttpResponse();

    response.setStatusCode(200);
    response.setStatus('OK');
    response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}');
    response.setHeader('Content-Type', 'application/json;charset=UTF-8');
    return response;

   }

   else if(request.getEndpoint()=='https://api.instantwebtools.net/v1/airlines' && request.getMethod()=='GET'){

HttpResponse response = new HttpResponse();
response.setStatusCode(200);
response.setStatus('OK');
response.setBody('[{"name":"Quatar Airways","country":"Quatar","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/300px-Qatar_Airways_Logo.svg.png","slogan":"Going Places Together","head_quaters":"Qatar Airways Towers, Doha, Qatar","website":"www.qatarairways.com","established":"1994"},{"name":"Singapore Airlines","country":"Singapore","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Singapore_Airlines_Logo_2.svg/250px-Singapore_Airlines_Logo_2.svg.png","slogan":"A Great Way to Fly","head_quaters":"Airline House, 25 Airline Road, Singapore 819829","website":"www.singaporeair.com","established":"1947"}]');
response.setHeader('Content-Type', 'application/json;charset=UTF-8');
return response;
   }else if(request.getEndpoint()=='https://api.onlinewebtutorblog.com/employees' && request.getMethod()=='GET'){

    HttpResponse response = new HttpResponse();
    response.setStatusCode(200);
    response.setStatus('OK');
    response.setBody('{"error":0,"msg":"data found","data":[{"username":"ebahringer","name":"Braulio Luettgen","email":"kaela.turner@example.net","gender":"Female","designation":"Mean Stack Developer","phone_number":"781.322.7616","complete_address":"298 Edythe Harbors Suite 697Lake Mathiasburgh, MN 28564-6386"},{"username":"moore.samanta","name":"Christian Kessler","email":"summer.koepp@example.com","gender":"Male","designation":"Freelancer","phone_number":"509-549-9565","complete_address":"8947 Howell MountainsSouth Kavon, VT 89670-8443"}]}');
    response.setHeader('Content-Type', 'application/json;charset=UTF-8');
    return response;
   }
   
   else if(request.getEndpoint()=='callout:Nc_dev_Account12/services/apexrest/Cases/500B000000AZCQbIAP' && request.getMethod()=='GET'){
case cs = [select id, status, Origin from case where id = '500B000000AZCQbIAP'];
string jsonstring = JSON.serialize(cs);



    HttpResponse response = new HttpResponse();
    response.setStatusCode(200);
    response.setStatus('OK');

response.setBody(jsonstring);
response.setHeader('Content-Type', 'application/json;charset=UTF-8');
return response;

   }
  else if(request.getEndpoint()=='https://th-apex-http-callout.herokuapp.com/animals' && request.getMethod()=='POST'){
    HttpResponse response = new HttpResponse();
    response.setStatusCode(201);
    response.setStatus('OK');
    response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}');
    response.setHeader('Content-Type', 'application/json;charset=UTF-8');
    return response;

   }
   return null;
   }

   
//silersen
/*public class restcalloutmock implements HttpCalloutMock{
public HttpResponse respond(HttpRequest request){


    if(request.getEndpoint()=='htp.calllout herokua[p.com/animals]' && request.getMethod()=='GET'){

        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setStatus('OK');
        response.setBody('animals majestic');
        response.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        return response;


    }else if(request.getEndpoint()=='api.airlines' && request.getMethod()=='GET'){
        HttpResponse response = new HttpResponse();
      HttpResponse.setStatusCode(200);
      response.setStatus('OK');
      response.setBody('');
      response.setHeader('Content-Type', 'application/json');


      retun response;
    }else if(request.getEndpoint()=='htps: employees' && request.getMethod()=='GET'){

HttpResponse response  = new HttpResponse();
response.setStatusCode(200);
response.setStatus('OK');
response.setBody('jkjnkfjnelrg');
response.setHeader('Content-Type', 'application/json;charset=UTF-8');
return response;


    }

return null;


}



}

@istest
public static void test1(){
RestCalloutsMock b = new RestCalloutsMock();
test.setMock(HttpCalloutMock.class, b);
HttpResponse response = RestCallouts1dayinclass.getAnimals();
system.assertEquals(200, response.getStatusCode());
system.assertEquals('OK', response.getStatus());

}
private static void test2(){


    RestCalloutsMock m = new RestCalloutsMock();

test.setMock(HttpCalloutMock.class, m);
HttpResponse response = RestCallouts1dayinclass.getAirlines();
system.assertEquals(200, response.getStatusCode());
system.assertEquals('OK', response.getStatus());







}
private static void getemployeetest(){


    RestCalloutsMock mock = new RestCalloutsMock();
    test.setMock(HttpCalloutMock.class, mock);
    
    HttpResponse response = RestCallouts1dayinclass.getEmployees();

    system.assertEquals(200, response.getStatusCode());
    system.assertEquals('OK', response.getStatus());
}*/

}
     
//set the mock
//test the mock
//run assert