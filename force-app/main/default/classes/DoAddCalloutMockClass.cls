public with sharing class DoAddCalloutMockClass implements WebServiceMock{
   

    public void doInvoke(Object a, Object b, Map<String,Object> response, string d, string e, string f, string g, String h, String i){

        CalculatorServices.doAddResponse y = new CalculatorServices.doAddResponse();
        y.return_x = 15;
        response.put('response_x',y);

}
}

/*CalculatorServices.doMultiplyResponse y = new CalculatorServices.doMultiplyResponse();
y.return_x = 12;
response.put('response_x', y);



DoMultiply mock = new DoMultiply();
    test.setMock(WebServiceMock.class, mock);

double result = SoapClassesFirstDay.doMultiply(3,4);

system.assertEquals(12, result);*/
