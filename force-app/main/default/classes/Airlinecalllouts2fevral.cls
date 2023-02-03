public with sharing class Airlinecalllouts2fevral {

        //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Method: POST

    @future(callout=true)
    public static void postAirline(Id airlineId){

//1. Prepare HttpRequest and wrap all the nesessary data in it

HttpRequest request = new HttpRequest();
request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
request.setMethod('POST');

Airline2__c airline = [select name, Name__c,country__c, Establish__c, Logo_URL__c, Head_Quarters__c, Slogan__c, Website__c from airline2__c where id = :airlineId ];

Airlinewrapper wrap = convertToWrapper(airline);
string body = JSON.serialize(wrap);
request.setBody(body);
request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        //2. Prepare internet
        Http http = new Http();
        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
HttpResponse response  = http.send(request);


        //4. Process HttpResponse
        Application_Log__c log = new Application_Log__c();
        log.Class_Method__c = 'AirlineCallouts:postairline - ' + airlineId;
        log.Exception_Message__c = response.getStatusCode() + ' ' + response.getStatus();
        log.Exception_Type__c = 'Success';
        log.Stack_Trace__c=response.getBody();
        insert log;

    }

    private static Airlinewrapper convertToWrapper(Airline2__c airline){
AirlineWrapper wrap = new AirlineWrapper();
wrap.country = airline.country__c;
wrap.established = airline.Establish__c;
wrap.head_quarters= airline.Head_Quarters__c;
wrap.id = airline.Name;
wrap.slogan = airline.slogan__c;
wrap.logo = airline.Logo_URL__c;
wrap.website = airline.Website__c;
wrap.name = airline.Name__c;
return wrap;
//metodda cagrdi islemi
    }


    //trigger u wait for non invoce just this method and do execution whenevr system is available

   /* @future(callout=True)

    public static void postAirline2(Id airlineId){//future void olmalidi return type collections id olamlidi mandatory hardan bilek hansi record alinacak
HttpRequest request = new HttpRequest();
request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
request.setMethod('POST');
//1get data detail and preparee the same as jsonbody

Airline2__c airline = [select name, Name__c,country__c, Establish__c, Logo_URL__c, Head_Quarters__c, Slogan__c, Website__c from airline2__c where id = :airlineId limit 1];
AirlineWrapper wrap2 = convertToWrapper(airline);

string body = JSON.serialize(wrap2);
request.setBody(body);//will be coming extra for us stpes artiqdi yeni
request.setHeader('Content-Type', 'application/json;charset=UTF-8');
 //prepare in

 Http http = new Http();

 HttpResponse response = http.send(request);//u will response back
 //we should create log record
//create a log is the best pratik
 Application_Log__c log2 = new Application_Log__c();
 log2.Class_Method__c = 'AirlineCallouts:postairline - ' + airlineId;
 log2.Exception_Message__c = response.getStatusCode() +' ' + response.getStatus();
 log2.Exception_Type__c = 'Success';
 log2.Stack_Trace__c=response.getBody();
 insert log2;
    }

    private static AirlineWrapper convertToWrapper(Airline2__c airline){
//private none touvh ur code nonvisible
        AirlineWrapper wrap2 = new AirlineWrapper();

wrap2.country = airline.country__c;
wrap2.established = airline.Establish__c;
wrap2.head_quarters= airline.Head_Quarters__c;
wrap2.id = airline.Name;
wrap2.slogan = airline.slogan__c;
wrap2.logo = airline.Logo_URL__c;
wrap2.website = airline.Website__c;
wrap2.name = airline.Name__c;
return wrap;
    }*/
}
//burdaki classin adi handlere oturulur id eklenir istenilir sonra handler classin adi ve methodu trigerde bellenir