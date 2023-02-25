public with sharing class EmployeeCallout {
   @future(callout=true)//sebebi triggerlar intgertionu desteklemiyor 

//Endpoint: https://api.onlinewebtutorblog.com/employees
//Http Method: POST
   public static void postEmployee(Id employeeId){

//future method oldugu icin ancak primitiv datayplai parametre datatypplari ala bilir..
//soql cagir
Employee11__c em = [select name, Designation__c,Email__c,Complete_Address__c,Integration_Status__c,Gender__c,Phone_Number__c,	Username__c from Employee11__c where id = :employeeId limit 1 ];

wrapper wr = new wrapper();
wr.complete_address = em.Complete_Address__c;
wr.designation = em.Designation__c;
wr.email = em.Email__c;
wr.gender = em.Gender__c;
wr.phone_number = em.Phone_Number__c;
wr.name= em.name;
wr.Username = em.Username__c;

string body = JSON.serialize(wr);

//2.gonder bodiyi
HttpRequest request = new HttpRequest();
request.setMethod('POST');
request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
Request.setBody(body);

Http http = new Http();
HttpResponse response = http.send(request);

em.Integration_Status__c = response.getBody() + ' ' + response.getStatusCode();

update em;
   }
      
      public class wrapper{
         public string Username;
         public string name;
         public string email;
         public string gender;
         public string designation;
         public string phone_number;
         public string complete_address;
        }
      

/*HttpRequest request = new HttpRequest();
request.setMethod('POST');
request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
Employee11__c emp = [select name, Designation__c,Email__c,Complete_Address__c,Integration_Status__c,Gender__c,Phone_Number__c,	Username__c from Employee11__c where id= :employeeId limit 1];
//Airlinewrapper wrap = convertToWrapper(airline);
wrapper w = EmployeeRes(emp);
string body = JSON.serialize(w);
request.setBody(body);
request.setHeader('Content-Type', 'application/json;charset=UTF-8');

Http http = new Http();

HttpResponse response = http.send(request);
emp.Integration_Status__c = Datetime.now() + ' ' + response.getStatus() + ' ' + response.getBody();
try{
    update emp;
}catch(exception ex){

    system.debug(ex.getMessage());
}

   }
   
private static  Wrapper  EmployeeRes(Employee11__c employee){

Wrapper wr = new wrapper();
wr.complete_address = w.Complete_Address__c;
wr.designation=w.Designation__c;
wr.email=w.Email__c;
wr.gender=w.Gender__c;
wr.name= w.name;
wr.phone_number=w.Phone_Number__c;
wr.username = w.Username__c;
return wr;

}*/

   }
