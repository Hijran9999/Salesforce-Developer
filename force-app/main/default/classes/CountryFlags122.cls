public with sharing class CountryFlags122 {
    public static HttpResponse getCountries() {



        HttpRequest request = new HttpRequest();

//1-ci kisim
        request.setEndpoint('jjekemekmk');

        request.setMethod('GET');
//2cikisim

        Http http = new Http();
       HttpResponse response = http.send(request);
//3cu kisim
       if(response.getStatusCode()==200){
        string jsonData = response.getBody();



        list<wrapperClassCountryFlag> listCountrywrapper =(list<wrapperClassCountryFlag>)JSON.deserialize(jsonData, list<wrapperClassCountryFlag>.class);//jsondan bu formata dondu bu sablon formadi
        //donusturdgmz verileri forun icine alib her recordu orga isletme yapicam

        list<Country_Flag__c> listCountry  = new list<Country_Flag__c>();
        for(wrapperClassCountryFlag eachwr : listCountrywrapper){

            Country_Flag__c cf = new Country_Flag__c();//wrapperden gelenler bura assgn edildi obje icin burda ici dolu v elisteye ekli olucak

          cf.Name=  eachwr.name;
          cf.Capital__c=  eachwr.capital;
          cf.Population__c=eachwr.population;
          cf.region__c=  eachwr.region;
          cf.Flag_Url__c= eachwr.flags.svg;
          cf.Native_Name__c =eachwr.nativeName;
           
          listCountry.add(cf);
            
        }


insert listCountry;

       }



    }

    public class wrapperClassCountryFlag{
public string name;
public string nativeName;
public integer population;
public string capital;
public string region;
public flagsWrapper flags;//gelen veriryi karsilayib orga aktarma flagda ic ice veriler vardi diye boyle yaptik
    }

    public class flagsWrapper{

        public string svg;
    }
}