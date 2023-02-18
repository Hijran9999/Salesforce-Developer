@RestResource(urlMapping='/Account/*')

global with sharing class AccountmanagerRestResource {
    //sil


@HttpGet
global static Account getAccount(){
   //https://softinnovas48-dev-ed.develop.my.salesforce.com/services/apexrest/Account/001Do000002YI4MIAW


RestRequest request = RestContext.request;
string uri = request.requestURI;

integer lastindex = uri.lastIndexOf('/');
Id acid = uri.substring(lastIndex+1);

account ac = [select id, name, annualrevenue, type from account where Id = :acid];
return ac;

}

@HttpPost
global static Id postAcc(string name, string type, string AccountNumber){
    account ac  = new account();
    ac.Type = type;
    ac.AccountNumber = AccountNumber;
    ac.Name = name;
    insert ac;
    return ac.Id;//axi id var return olunasiki account create olunsun
}

@HttpDelete

global static string deleteAccount(){

    RestRequest request = RestContext.request;
    string url = request.requestURI;


    integer lastindex = url.lastIndexOf('/');
    Id acid = url.substring(lastindex+1);
try{
    account acc = [select id from account where id = :acid];
    delete acc;
}catch(exception e){
    return 'fail';
}
    return 'Success';

    
}

@HttpPut
global static Id upsertAccount(string id, string name, string type){

    account ac = new account();
    ac.name = name;
    ac.type = type;
    ac.Id = id;
    upsert ac;
    return ac.Id;

    /*RestRequest request = RestContext.request;
   string requestbody =  request.requestBody.toString();

  Account accc =  (Account)JSON.deserialize(requestbody, Account.class);
  upsert accc;
  return accc;*/

 
        
}
@HttpPatch

global static Account patchAccount(){


    RestRequest request = RestContext.request;
    string requestbody = request.requestBody.toString();

account acc = (account)JSON.deserialize(requestbody, Account.class);


update acc;
return acc;
}
}




