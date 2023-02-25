@restresource(urlMapping='/Opp/*')
global with sharing class OPpMnaagerTirkisREv {
@HttpGet
global static Opportunity getOpp(){
//request et talebi al urin icinden idni al ve  bu recordu orgdan etir return et
RestRequest request = RestContext.request;
string uri = request.requestURI;
Id opid = uri.substringAfterLast('/');

Opportunity op = [select id, name, closedate, stagename from Opportunity where id = : opid];
return op;
}

@HttpPost   //jsonformatda bodu ivine doldur
global static Id postOpp(string name, string closedate,string stagename){
Opportunity opp = new Opportunity();
opp.name = name;
opp.CloseDate = Date.valueOf(closedate);//string olan tarih date cevrildi bu yolla
opp.StageName = stagename;
insert opp;
return opp.id;
}

@HttpDelete  //reusetden id al axirinci queryle getir sil
global static string deleteopp(){
RestRequest request = RestContext.request;
string uri = request.requestURI;
Id oppid = uri.substringBeforeLast('/');//uriyi aldik
Opportunity op = [select id from Opportunity where id = :oppid];
delete op;
return 'Deleted';
}
@HttpPut 
global static Id putOpp(string Id, string name, string closedate,string stagename){
Opportunity opp= new Opportunity();
opp.Id = Id;//varsa update yoxsa yenisin create edir
opp.name = name;
opp.CloseDate = Date.valueOf(closedate);
opp.StageName = stagename;
upsert opp;
return opp.id;//id alib islem yapmak kolay oldugu icin id alinir
}
@HttpPatch 
global static Opportunity patchOpp(){
RestRequest request = new RestRequest();
string jsonstring = request.requestBody.toString();
Opportunity op =(Opportunity)JSON.deserialize(jsonString, Opportunity.class);
update op;
Opportunity opp = [select id, name, stagename, closedate from Opportunity where id = : op.id];//bilgini alib yeni ifadeye koyub orgda check etdik
return opp;
//bana oppp getirki update edeym
}
//sinifde etdym

   /* @HttpGet
    global static Id  OPpMnaagerTirkisREv() {

RestRequest request = RestContext.request;
string url = request.requestURI;
 Id oppId = url.substringAfterLast('/');

 Opportunity op = [select id, name, closeDate, stageName, amount from Opportunity where id =:oppId];
 return op.id;
    }
@HttpPost 

global static Id createOppPostMethod(string name, string closedate, string stagename, string amount){

Opportunity opp = new Opportunity();

opp.Name = name;
opp.CloseDate = date.valueOf(closedate);
opp.StageName = stagename;
opp.Amount = Decimal.valueOf(amount);

insert opp;
return opp.id;
}

@HttpDelete

global static string dleeteopp(){

    RestRequest request  = RestContext.request;
    string uri = request.requestURI;

    Id opid = uri.substringAfterLast('/');
    Opportunity opp = [select id from Opportunity where id =:opid];
    delete opp;
    return 'Deleted';
}

@HttpPut
global static id upsertPutOpp(string id, string name, string closeDate, string stagename,string amount){


//putda anca paramterlere yazilmali hem de create de edir
    Opportunity opp = new Opportunity();

    opp.Id  = id;
    opp.Name = name;
    opp.CloseDate = Date.valueOf(closeDate);
    opp.StageName = stagename;
    opp.Amount =Decimal.valueOf(amount);
upsert opp;

return opp.id;
 

//put yenile 
}
@HttpPatch
global static Opportunity updateOpp(){
  
    RestRequest request = RestContext.request;

string jsonbody = request.requestBody.toString();

  Opportunity op = (Opportunity)JSON.deserialize(jsonbody, Opportunity.class);
update op;

Opportunity opnew = [select id, name, stagename, closedate,amount from Opportunity where id =:op.id];

return opnew;
//update ediyor
}*/
}