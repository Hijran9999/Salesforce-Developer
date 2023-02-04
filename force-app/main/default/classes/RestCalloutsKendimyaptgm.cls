public with sharing class RestCalloutsKendimyaptgm {
    public static HttpResponse getCase(){

        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:Nc_dev_Account12/services/apexrest/Cases/500B000000AZCQbIAP');
        //bunu Integration_Info__mdt.getInstance(Get_Animals).endpoint__c
        req.setMethod('GET');

        Http http = new Http();

        HttpResponse resp = http.send(req);
        //if evrthing goes smoothly bu status codu alassan
     system.debug('statuscode ' + resp.getStatusCode());
     system.debug('status ' + resp.getStatus());
     system.debug('body  ' + resp.getBody());
           

        return resp;
    }

}