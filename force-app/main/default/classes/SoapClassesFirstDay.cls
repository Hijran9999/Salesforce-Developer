public with sharing class SoapClassesFirstDay {
    
public static string[] parksCallout(string country){

    ParksServices.ParksImplPort parkService = new ParksServices.ParksImplPort();
string[] parks = parkService.byCountry(country);
system.debug(parks);
return parks;//string return etdiymiz icin park diye variable atadiq. returnde return etdik..




}

public static double doaddCallout(double arg0, double arg1){

    CalculatorServices.CalculatorImplPort calser = new  CalculatorServices.CalculatorImplPort();
    double res = calser.doAdd(arg0,arg1);
    system.debug(res);

return res;
}




public static Double doMultiply(Double arg0,Double arg1) {
    CalculatorServices.CalculatorImplPort calser = new  CalculatorServices.CalculatorImplPort();


    double r = calser.doMultiply(arg0,arg1);

    system.debug(r);
    return r;
} 
}
//return area of string
//cALLOUT_RESPONSE|[31]|<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:byCountryResponse 
//////xmlns:ns2="http://parks.services/"><return>Yellowstone</return><return>Mackinac National Park</return><return>Yosemite</return></ns2:byCountryResponse></soap:Body></soap:Envelope>