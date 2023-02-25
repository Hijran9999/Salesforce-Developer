@restresource(urlMapping='/Case/*')

global with sharing class CaseManager {
    
    //https://softinnovas48-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Do000001YgUDIA0


    @HttpGet
    global static Case getCase(){

        RestRequest request = RestContext.request;//we are interested in request
       string uri = request.requestURI;//incoming rest request
       integer lastIndex = uri.lastIndexOf('/');
       Id caseId = uri.substring(lastIndex+1);
       Case cs = [select id, caseNumber, Subject, Description, Type, Priority, Status from Case where Id = :caseId];

       return cs;
       //grab ucun rest context oyrenilmelidi
//split based on slash
//https://softinnovas48-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Do000001YgUDIA0

//lastindexof ('/')



    }

    @HttpPost
    global static Id postCase(string Subject, string Description, string Priority, string  Status ){

        case c = new case();
        c.Subject = Subject;
        c.Description = Description;
        c.Priority = Priority;
        c.Status = Status;
        insert c;
        return c.Id;

    }

    @HttpDelete

    global static string deleteCase(){

        RestRequest request = restContext.request;
        string uri = request.requestURI;
        integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex+1);

try{
    case cs= [select id from case where Id =: caseId];
    delete cs;
}catch(exception e){
    return 'Fail';
}
return 'Success';

    }
@HttpPut 

global static Id putCase(string Id , string Subject, string Description, string Priority, string  Status ){

    case c = new case();
    c.Subject = Subject;
    c.Description = Description;
    c.Priority = Priority;
    c.Status = Status;
    c.Id=Id;
    upsert c;
    return c.Id;
        

}


@HttpPatch
global static Case patchCase(){

    restRequest request = RestContext.request;
    string body = request.requestBody.toString();

    case cs = (Case)JSON.deserialize(body, case.class);
    update cs;
    return[select Id, caseNumber, subject,description, Priority,status from case where id =: cs.id limit 1];

}





}