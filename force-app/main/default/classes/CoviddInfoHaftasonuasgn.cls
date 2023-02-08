public with sharing class CoviddInfoHaftasonuasgn {
   public static HttpResponse getCovidInfo(){

    HttpRequest request= new HttpRequest();

    request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
    request.setMethod('GET');
    Http http = new Http();
    Httpresponse response = http.send(request);

    if(response.getStatusCode()==200){

       string jasonstring= response.getBody();
       system.debug(jasonstring);
       list<wrapperCovid> listwrapper = (list<wrapperCovid>)JSON.deserialize(jasonString, list<wrapperCovid>.class);
       wrapperCovid listcovidinfo = listwrapper[0];

       list<Covid_Info__c> listsoql = [select id, name, Negative__c, Received_Date__c, Positive__c, Pending__c from Covid_Info__c where Received_Date__c = TODAY ];
       
      if(!listwrapper.isempty()){

        listsoql[0].Name = listcovidinfo.states;
        listsoql[0].Negative__c = listcovidinfo.negative;
        listsoql[0].Positive__c = listcovidinfo.positive;
        listsoql[0].Pending__c = listcovidinfo.pending;
        


        update listsoql[0];
   
      }else{

        Covid_Info__c coinf = new Covid_Info__c();
        coinf.Name =listcovidinfo.states;
        coinf.Negative__c= listcovidinfo.negative;
        coinf.Positive__c=listcovidinfo.positive;
        coinf.Pending__c=listcovidinfo.pending;
        
        insert coinf;
      }
    



    }
    return response;
}
   

   public class wrapperCovid{
public string states;
public integer positive;
public integer negative;
public integer pending;

   }
}