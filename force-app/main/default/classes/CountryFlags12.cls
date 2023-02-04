public with sharing class CountryFlags12 {
    public static HttpResponse  getCountry(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://restcountries.com/v2/all');
        request.setMethod('GET');
        
        Http ht = new Http();
       HttpResponse response = ht.send(request);
       if(response.getStatusCode()==200){


string jsondat = response.getBody();
list<wrappercountryFlag> listwrapper =(list<wrappercountryFlag>)JSON.deserialize(jsondat,list<wrappercountryFlag>.class);

//bos bir orgumuzdaki objemize ait bir liste olusturuyrm
list<Country_Flag__c> listCountry = new list<Country_Flag__c>();


for( wrappercountryFlag eachwr : listwrapper){
    Country_Flag__c c = new Country_Flag__c();
    c.Name = eachwr.name;
    c.Native_Name__c= eachwr.nativename;
    c.Capital__c = eachwr.capital;
    c.Population__c = eachwr.population;
    c.Flag_Url__c = eachwr.flags.svg;
    c.Region__c = eachwr.region;

listCountry.add(c);


}
insert listCountry;
       }
return response;
    }

    public class wrappercountryFlag{
public string name;
public string nativeName;
public string capital;
public integer population;//wrapper korpudu
public  string region;
public flagsWrapper flags;

    }
    public class flagsWrapper{

        public string svg;
    }
}