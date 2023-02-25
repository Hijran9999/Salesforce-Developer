@istest
public with sharing class SoapcalloutTest {
   
@istest
private static void parksCaloutTest(){

//set mock
SoapClassMockCallout mock = new SoapClassMockCallout();
test.setMock(WebServiceMock.class, mock);


//test mock


string country = 'Turkey';//area of park names...

string[] parks = SoapClassesFirstDay.parksCallout(country);//yuxarida bunun country variable atadik tureyi verceekkk.
//assert 

system.assertEquals(2,parks.size());

}

@istest
private static void doAddCalloutTest(){



    DoAddCalloutMockClass mock = new DoAddCalloutMockClass();
    test.setMock(WebServiceMock.class, mock);

double result = SoapClassesFirstDay.doaddCallout(10, 5);

system.assertEquals(15, result);


}

@istest
private static void DoMultiplyTest(){


    DoMultyResponseMock mock = new DoMultyResponseMock();
    test.setMock(WebServiceMock.class, mock);


    double result = SoapClassesFirstDay.doMultiply(3,4);


    system.assertEquals(12, result);

}

}