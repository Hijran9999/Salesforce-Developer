public with sharing class DoMultyResponseMock implements WebServiceMock {
    
    public void doInvoke(Object a, Object b, Map<String,Object> response, string d, string e, string f, string g, String h, String i){



        CalculatorServices.doMultiplyResponse y = new CalculatorServices.doMultiplyResponse();//response olustrmya acalis //innerclass
y.return_x = 12;
response.put('response_x', y);

}
}
//test ortaminda callout yapamiyorm mock class create ederz
