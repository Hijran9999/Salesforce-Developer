public with sharing class GetPostInfo {
    public static HttpResponse postPost(){

HttpRequest request =  new HttpRequest();

request.setEndpoint('https://gorest.co.in/public/v2/posts');

request.setMethod('POST');

Post__c post = [select Name, Title__c, User_Id__c, Body__c from Post__c  where createdDate = TODAY limit 1];



wrapperclass wr = new wrapperclass();
wr.body=post.Body__c;
wr.title = post.Title__c;
wr.user_id = integer.valueOf(post.User_Id__c);



request.setBody(JSON.serialize(wr));
request.setHeader('Content-Type', 'application/json;charset=UTF-8');
request.setHeader('Authorization', 'Bearer 8e2aef0c8cf43ee591764d6004dc7a6a57bfb8b6abab62d751af2335c66499c7');


Http http = new Http();

//3. Send the HttpRequest over the internet in order to receive HttpResponse back

HttpResponse response = http.send(request);

if(response.getStatusCode()==201){

system.debug(response.getBody());

}else{

    system.debug('Hataliiii responseeee');
}

return response;

    }


public class wrapperclass{

public integer user_id;
public string title;
public string body;






}



}