public with sharing class RestCalloutUsingNamedCredentials {
    public static HttpResponse getCaseDetails(){
        //create htprequest

        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint('callout:Nc dev Ac flowadmntrsan orgum/services/apexrest/Cases/500Do000001ZOrbIAG');
        //prepare internet
        Http ht = new Http();
        //send the request
      HttpResponse response =  ht.send(request);
        ////process the response

        system.debug(response.getStatusCode());
        system.debug(response.getStatus());
        system.debug(response.getBody());

return response;

    }
}