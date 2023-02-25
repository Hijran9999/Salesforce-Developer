public with sharing class SoapClassMockCallout implements WebServiceMock {


    public void doInvoke(Object a, Object b, Map<String,Object> response, string d, string e, string f, string g, String h, String i){


        parksServices.byCountryResponse res= new parksServices.byCountryResponse();
        res.return_x = new list<string>{'Us National Park', 'Turkiye Natioanl Park'};//testde iki yazdik iki ad verdymze
        response.put('response_x', res);


    }
  

}