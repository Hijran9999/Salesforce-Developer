public with sharing class CovidInfoTekrar {
    public static HttpResponse covidInfo(){//bu methodun icerisinde internetden alinan respond islenicek

HttpRequest request  = new HttpRequest();
request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');//bu olsun endpoint set yaptik request bu adresten yapcaz
request.setMethod('GET');//almak

Http ht = new Http();//prepare internet

 HttpResponse response = ht.send(request);
 if(response.getStatusCode()==200){

    string jsonstrn = response.getBody();//almak icin kullan
    list< wrapperClass> listwrapper = (list< wrapperClass>)JSON.deserialize(jsonstrn, list< wrapperClass>.class);
    wrapperClass wrcl = listwrapper[0];//listenin ilk elemanini atadk

 //wrapperClass wrcl = (wrapperClass)JSON.deserialize(jsonstrn, wrapperClass.class );//apex formatina dondur

 list<Covid_Info__c> cov1  = [select id, Negative__c, Pending__c, Positive__c, Received_Date__c from Covid_Info__c where Received_Date__c= TODAY];




if(cov1.isempty()){

    Covid_Info__c ci =  new Covid_Info__c();
    ci.Negative__c = wrcl.negative;
    ci.Pending__c = wrcl.pending;
    ci.Positive__c = wrcl.positive;
    ci.Name = wrcl.states;
    ci.Received_Date__c = Date.today();
    
insert ci;
}else {

cov1[0].Negative__c = wrcl.negative;//en son yaratilanlari update et
cov1[0].Pending__c = wrcl.pending;
cov1[0].Positive__c = wrcl.positive;
cov1[0].Name = wrcl.states;
cov1[0].Received_Date__c = Date.today();

update cov1;


}

 }
return response;
    }

    public class wrapperClass{

        public string states;
        public integer positive;
        public integer negative;
        public integer pending;
    }

   
        

public static HttpResponse post1(){

HttpRequest request = new HttpRequest();
request.setEndpoint('https://gorest.co.in/public/v2/posts');
request.setMethod('POST');
Post__c  postum  = [select	User_Id__c, Body__c, Title__c, Name from Post__c where createdDate = TODAY limit 1];

//post edince gondermek lazim soqla sistemden cekkk

WrapperPostHaftasonu wrp = new WrapperPostHaftasonu();

Wrp.user_id = Integer.valueOf(postum.User_Id__c);
Wrp.title = postum.Title__c;
Wrp.body = postum.Body__c;

request.setBody(JSON.serialize(wrp));//apex formatini jsona cevirdikk...
request.setHeader('Content-Type', 'appliaction/json');//post etdiyimiz icin setheader olsun.
request.setHeader('Authorization', 'Bearer 8e2aef0c8cf43ee591764d6004dc7a6a57bfb8b6abab62d751af2335c66499c7');

Http ht = new Http();
HttpResponse response =  ht.send(request);

 
//post ediceymz icin requesti gondermeden once serialize etmemiz lazm json formatina cevir...

if(response.getStatusCode()==201){
system.debug(response.getBody());
}else{

    system.debug('wrong response');
}
return response;


}


}
