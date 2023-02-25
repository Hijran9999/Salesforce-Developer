@istest
public with sharing class OppManagerTest {
@TestSetup
static void makeData(){
List<Opportunity> listop = new List<Opportunity>();
for(integer i=0; i<5; i++){
Opportunity op = new Opportunity();
op.name = 'Optestim1 ' +i;
op.StageName = 'Prospecting';
op.CloseDate= Date.today();
listop.add(op);
}
insert listop;
List<Opportunity> listopp = [select id from Opportunity];
system.assertEquals(5, listopp.size());
 }
@istest
private static void postOppTest(){

Id opid = OPpMnaagerTirkisREv.postOpp('Hiji', '2022-7-09', 'Prospecting');
system.assertNotEquals(null, opid);
Opportunity opp = [select id, name, stagename, closedate from Opportunity where id = :opid ];//bu idye ait oppyi al getr
system.assertEquals('Hiji', opp.name);
 }
@istest 
private static void getoppTest(){
    test.startTest();
//1.asama query yap id almak icin
Opportunity opp = [select id, name, stagename, closedate from Opportunity limit 1];
string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();
RestRequest request =  new RestRequest();
request.httpMethod = 'GET';
request.requestURI = homeurl + '/services/apexrest/Opp/' + opp.id;
RestContext.request = request;
Opportunity oppp = OPpMnaagerTirkisREv.getOpp();
system.assertEquals(opp.name, oppp.name);
system.assertEquals(opp.stagename, oppp.StageName);
system.assertEquals(opp.id, oppp.id);
test.stopTest();
}
@istest 
private static void deleteOppTest(){
test.startTest();
Opportunity opp = [select id, name, stagename, closedate from Opportunity limit 1];
string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();
RestRequest request = new RestRequest();
request.httpMethod = 'DELETE';
request.requestURI = homeurl + '/services/apexrest/Opp/' + opp.id;
RestContext.request = request;
string opMessage = OPpMnaagerTirkisREv.deleteopp();
system.assertEquals('Deleted', opMessage);
test.stopTest();
}
@istest 
private static void putTest(){
test.startTest();
Id opid = OPpMnaagerTirkisREv.putOpp(null, 'Mery', '2023-4-5', 'Prospecting');//id donur deye sytm asertde .ide ehtiyac yoxdur
system.assertNotEquals(null, opid);
Opportunity op = [select id, name, stagename, closedate from Opportunity where id = :opid];
system.assertEquals('Mery', op.name);
system.assertEquals('Prospecting', op.StageName);
test.stopTest();
//putda bize create etdymz lazmdi neyi return edirdise getrdk sonrada null yoxladiq id sonrada query edib filedlerin eyni olub olmadigini yoxladiq.
}

@istest 
private static void patchTestOpp(){
test.startTest();
Opportunity op = [select id, name,stagename, closedate from Opportunity limit 1];//bu update oldugu ucun bazi fieldler update olunsun
op.StageName = 'Closed-Won';
op.name = 'Update olan Opp test icin';
string js = JSON.serialize(op);//jsona donderrrr
RestRequest request = new RestRequest();
request.httpMethod = 'Patch';
request.requestBody = blob.valueOf(js);//jsona donusdur aldigini
RestContext.request = request;
Opportunity opp = OPpMnaagerTirkisREv.patchOpp();
system.assertEquals('Closed-Won', opp.StageName);
system.assertEquals('Update olan Opp test icin', opp.name);
test.stopTest();  
}
}


/*test.startTest();
   Id opid =OPpMnaagerTirkisREv.createOppPostMethod('Hijijiji', '2023-6-2', 'Prospecting', '70');


system.assertNotEquals(null, opid);//nulla esit deyil
Opportunity opp = [select id, name, closedate, stagename, amount from Opportunity where id =:opid];

//bu idye ait opp al getir dedik

system.assertEquals('Hijijiji', opp.name);
test.stopTest();*/