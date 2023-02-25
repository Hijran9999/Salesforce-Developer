@istest
public with sharing class CaseManagerTest {
    


@testSetup
private static void makedata() {
    list<case> listcase = new list<case>();
for(Integer i=0; i<3;i++){
    case cs = new case(subject='Test Subject ' +i, Description= 'Test des ' + i, Origin='Email');
cs.type = 'Electrical';
cs.Priority= 'High';
cs.status = 'New';

listcase.add(cs);

}
    
insert listcase;
    list<case> incase = [select id from case];

    system.assertEquals(3,incase.size());

}


@istest

private static void postCaseTest(){

    test.startTest();

   Id caseId =  CaseManager.postCase('Subject','description','High','New');
  system.assertNotEquals(null, caseId);

  case c = [select id, subject, priority from case where id = :CaseId];

 
    test.stopTest();
}

@istest 

private static void putcaseTest1(){

test.startTest();

//pass null in Id=> testing insert scenario
Id caseId = CaseManager.putCase(null,'Subject', 'Description', 'Medium', 'New');
system.assertNotEquals(null, caseId);
case cs1 = [select id, subject, Priority from case where id = :caseId];
system.assertEquals('Medium', cs1.Priority);
//past valid Id => testing update scenario
Id sameCaseId = CaseManager.putCase(caseId, 'Subject Changed', 'Description', 'High', 'In Progress');
system.assertEquals(caseId, samecaseId);

case cs2 = [select Id, priority from case where Id = :caseId];
system.assertEquals('High', cs2.Priority);
test.stopTest();


}
@istest


private static void getCaseTest(){
test.startTest();
    //1prepare RequestTest
    case cs = [select id, subject,Priority,Status from case limit 1];
    string homeUrl = system.URL.getSalesforceBaseUrl().toExternalForm();
    RestRequest request = new RestRequest();
    request.httpMethod='GET';
    request.requestURI = homeUrl+  '/services/apexrest/Case/' + cs.id;
    //2 prepare restContext

    RestContext.request = request;
    //3
    case objCase = CaseManager.getCase();
    system.assertEquals(cs.Id, objCase.Id);
    system.assertEquals(cs.Subject, objCase.Subject);
    system.assertEquals(cs.Priority, objCase.Priority);
    test.stopTest();
}

@istest
private static void deleteCaseTest(){
test.startTest();

    case c = [select id, subject, priority,status from case limit 1];
    string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();
    RestRequest request = new RestRequest();
    request.httpMethod = 'Delete';
    request.requestURI= homeurl+  '/services/apexrest/Case/' + c.id;


RestContext.request = request;
string succesmessage = CaseManager.deleteCase();
system.assertEquals('Success', succesmessage);
test.stopTest();
}

@istest
private static void patchCaseTest(){

    test.startTest();

    case cs = [select Id, subject, description,priority, status from Case limit 1];
cs.Priority= 'Medium';
cs.Status = 'In Progress';
string body = JSON.serialize(cs);

RestRequest request =  new RestRequest();
request.httpMethod= 'Patch';
request.requestBody = Blob.valueOf(body);
RestContext.request = request;

case s = CaseManager.patchCase();
system.assertEquals('Medium',cs.Priority);
system.assertEquals('In Progress', cs.Status);

    test.stopTest();
}
}
