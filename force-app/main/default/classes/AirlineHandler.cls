public with sharing class AirlineHandler {
    public static void  afterInsert(map<id, Airline2__c> newAirlines) {//u are creating new fresh method

for(id airlineId : newAirlines.keyset()){

    Airlinecalllouts2fevral.postAirline(airlineId);
}

//id gerekli map goturruk ona gore de triggeri newmap olur.
    }


    @future(callout=true)//future methoddan callout cagirilsa bele olur moteruze icine 

public static void postAirline(Id airlineId){
//You do'not to retun anything
//what airline record post u need id dinamic soql convert json format sora post
//id is mandatory
//1 prepare request
HttpRequest request = new HttpRequest();
request.setEndpoint('fnvf');
request.setMethod('POST');
//1in 1.1-i
Airline2__c airline = [select id, name, country__c, 
established__c, logo_Url__c, slogan__c,website__c 
from airline2__c where id = :airlineId limit 1];

AirlineWrapper wrap = convertToWrapper(airline);

string body = JSON.serialize(airline);
request.setBody(body);
request.setHeader('Content-Type', 'application/json;charset=UTF-8');
//2prepare internet
Http h = new Http();

//prepare response request
HttpResponse response = h.send(request);

Application_log__c log = new application_log__c();
log.class_method__c= 'Airline: postairline' + airlineId;
log.Exception_message__c = response.getStatusCode() +' ' + response.getStatus();
log.stack_Trace__c = response.getBody();
log.Exception_type__c = 'Succes';
insert log;
}

private static AirlineWrapper convertToWrapper(Airline2__c airline){
    AirlineWrapper wrap = new AirlineWrapper();
    wrap.country = airline.country__c;
    wrap.established = airline.Establish__c;
    //o biri fieldler de var elave olunasi
    return wrap;

}
//1 callout
//2 airline future method with callout
//3 trigger
//airline handler classi
///for(id airlineid : newairlines parametrde olan .keyset()){
    //airlinecallouts.postairline(airlineid);
//}future methodda olan classi ve methodu cagr

}
