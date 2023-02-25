@restresource(urlMapping='/Contact/*')
global with sharing class ContactManager {
   //https://softinnovas48-dev-ed.develop.my.salesforce.com/003Do000009jZDsIAM
@HttpGet
global static Contact getCon(){

RestRequest request = RestContext.request;
string uri = request.requestURI;
Id conid = uri.substringAfterLast('/');
contact c = [select id from contact where id = :conid];
return c;

}

@HttpPost 
global static Id postCon(string lastname,string email){
    Contact c=  new Contact();
    c.LastName = lastname;
    c.Email = email;
    insert c;
    
    return c.Id;
}

@HttpDelete 
global static string deleteContact(){

RestRequest request = RestContext.request;
string url = request.requestURI;

Id lastindexid = url.substringAfterLast('/');//slashdan sonraki deyeri getr

contact con = [select id from contact where id = :lastindexid];
delete con;

return 'Deleted';
}

@HttpPut
global static Id putContact(string Id, string lastname, string email, string phone){

Contact con = new contact();
con.Id = Id;
con.LastName = lastname;
con.Email = email;
con.Phone = phone;
upsert con;
return con.id;
}

@HttpPatch 
global static Contact patchCon(){

RestRequest request = RestContext.request;
//get methodu olmadigi icin reuqest url ihtiyac yok...
string jsnstr = request.requestBody.toString();
Contact con = (Contact)JSON.deserialize(jsnstr,Contact.class);
//soqla neden ihtiyac duymadik cunki yaptigimiz sey update etmek..
update con;
Contact c = [select id from contact where id = : con.id];
return c;

}

 //dogru format yukaridaki

/*
RestRequest request = new RestRequest();
string url = request.requestURI;


Id contactId = url.substringAfterLast('/');

Contact con = [select id, lastname,phone, email,title, department from contact where Id =:contactId];

return con;
}
@HttpPost

global static Id postContact(String LastName, String Phone, String Email, String Title){
    Contact cnn = new Contact();
    cnn.LastName = LastName;
    cnn.Phone = Phone;
    cnn.Email = Email;
    cnn.Title = Title;
    insert cnn;
    return cnn.Id;
}
@HttpDelete

global static string deletecon(){

RestRequest request = RestContext.request;
string url = request.requestURI;

Id conid = url.substringAfterLast('/');

contact conl = [select id from contact where id= :conid];

delete conl;
return 'Deleted';

}
@HttpPut

global static Id putContact(string id,string lastname, string phone, string email){

contact con = new Contact();
con.LastName = lastname;
con.phone = phone;
con.Email = email;
con.Id = id;
upsert con;

return con.id;
}

@HttpPatch

global static Contact patchContact(){

RestRequest request  = RestContext.request;
STRING RequestBody = request.requestBody.toString();


contact con = (Contact)JSON.deserialize(RequestBody, contact.class);


update con;
return con;*/

}