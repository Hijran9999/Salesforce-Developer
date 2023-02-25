@istest
public with sharing class AccountManagerTestCalsHomework {
 


   @TestSetup
   private static void makeData(){
    list<account> aclist= new list<account>();

    for(integer i=0;i<3;i++){

        Account ac = new account();
        ac.name = 'Test Accounmanager ' + i;
        ac.phone = '47837322';
        aclist.add(ac);
    }

    insert aclist;

    list<account> insertedacc = [select id from account];
    system.assertEquals(3, insertedacc.size());
   }

   @istest

   private static void postAccountTest(){
test.startTest();

   Id acid = AccountmanagerRestResource.postAcc('NewAc','Industry', '78477');

system.assertNotEquals(null, acid);
account ac = [select id, name, type, AccountNumber from Account where id = :acid];
system.assertEquals('Newac', ac.name);
test.stopTest();


   }
@istest 
private static void putAccTest(){

test.startTest();

Id acid = AccountmanagerRestResource.upsertAccount(null, 'Testimbenimacmanager', 'Prospecting');
system.assertEquals(null,acid);

account ac2= [select id, name, type from account where id = :acid];
system.assertEquals('Testimbenimacmanager',ac2.name);
//pass null in Id=> testing insert scenario
Id sameCaseid = AccountmanagerRestResource.upsertAccount(acid, 'Testimbenimacmanager changed', 'Customer-Direct');
system.assertEquals(acid, sameCaseid);


account ac3 = [select id, name, type from account where id = :acid];
system.assertEquals('Customer-Direct', ac3.type);
test.stopTest();

}

@istest 
private static void getAccTest(){
    //prepare restcontext
    //test the business method
    test.startTest();
account acc = [select id from account limit 1];
    //preapre rest request

string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();

RestRequest request = new restrequest();
request.httpMethod = 'Get';
request.requestURI = homeurl + '/services/apexrest/Account/' + acc.id;
RestContext.request = request;
 account acs = AccountmanagerRestResource.getAccount();

 system.assertEquals(acc.Id, acs.Id);
 system.assertEquals(acc.type, acs.type);
 system.assertEquals(acc.name, acs.name);


 test.stopTest();

}


@istest
private static void deleteAcctest(){

test.startTest();
account a = [select id, name, type from account limit 1];
string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();


RestRequest request  = new RestRequest();

request.httpMethod = 'DELETE';
request.requestURI = homeurl + '/services/apexrest/Account' + a.Id;

RestContext.request = request;
string result = AccountmanagerRestResource.deleteAccount();

system.assertEquals('Account is ok', result);

try{
    string status = AccountmanagerRestResource.deleteAccount();
    system.assertEquals('Fail', status);

}catch(exception e){


}


test.stopTest();




}


@istest 


private static void patchTest(){

test.startTest();
//1.asama 
account accc = [select id, name , type from account limit 1];
accc.name = 'Benim';
accc.type = 'Prospecting';
 string body = JSON.serialize(accc);
//2.asama
 RestRequest request = new RestRequest();
 request.httpMethod = 'Patch';
 request.requestBody = Blob.valueOf(body);
 RestContext.request = request;

 //3cu asama 
 account ac = AccountmanagerRestResource.patchAccount();
 system.assertEquals('Benim', accc.name);
 system.assertEquals('Prospecting', accc.Type);
test.stopTest();

}
}
