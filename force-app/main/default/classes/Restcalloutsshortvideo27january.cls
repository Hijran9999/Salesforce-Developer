public with sharing class Restcalloutsshortvideo27january {
    public static HttpResponse getAnimals(){

        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');//bunu Integration_Info__mdt.getInstance(Get_Animals).endpoint__c
        req.setMethod('GET');

        Http http = new Http();

        HttpResponse resp = http.send(req);
        if(resp.getStatusCode()==200){//if evrthing goes smoothly bu status codu alassan
            string jsonstring = resp.getBody();
            system.debug(jsonstring);


        }else{
            //create an error log
        }
        return resp;
    }

    public static HttpResponse getUsers(){
        HttpRequest request  = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        request.setMethod('GET');

        Http http = new Http();

        HttpResponse response = http.send(request);


        if(response.getStatusCode()==200){

            string jsonString = response.getBody();

            system.debug(jsonString);
          list<ContactResponse> conres = (list<ContactResponse>)JSON.deserialize(jsonString, list<ContactResponse>.class);

          processContacts(Conres);


        }
        else{
            //create an error log
        }
        return response;
    }

    private static void processContacts(List<ContactResponse> contres){

list<contact> listc = new list<contact>();
        for(ContactResponse cs : contres){

            contact con = new contact();
            string[]  names = cs.name.split(' ');
            con.FirstName = names[0];
            con.LastName = names[1];
            con.email = cs.email;
            con.gender__c = cs.gender;
            con.status__c = cs.status;
            listc.add(con);
           // create eledik contact
        }
        insert listc;

    }

    public static HttpResponse postAnimals(){

        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('POST');

        string body = '{"name" : "mighty moose"}';
        req.setBody(body);
        req.setHeader('Content-Type', 'application/json');

        //another example
        list<contact> ls = [select id, firstname, lastname, email,phone from contact limit 100];
        string jsonstring = JSON.serialize(ls);
        req.setBody(jsonstring);
        req.setHeader('Content-Type', 'application/json');


        Http http = new Http();
        HttpResponse ress = http.send(req);

        if(ress.getStatusCode()==201){

for(contact con : ls){


    con.status__c  ='Active';
}
update contacts;
        }else{

            //create an error Log
        }
    }
}