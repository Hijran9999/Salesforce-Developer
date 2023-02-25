@istest
public with sharing class ContactManagerTest {
    @TestSetup
    static void makeData(){
    contact con = new contact();

    con.LastName = 'Maryyy';
    con.Phone = '7348993';
    con.email = 'mary@gmail.com';
    insert con;

    }

    @istest 

private static void getTest(){
test.startTest();

contact c = [select id, lastname, phone, email from contact limit 1];
string url = system.Url.getSalesforceBaseUrl().toExternalForm();//mock yapmmamizin sebbei bu satir disaridan almiyorz
 Restrequest request = new Restrequest();
 request.httpMethod = 'GET';

 request.requestUri = url + '/services/apexrest/Contact/' + c.id;
 RestContext.request = request;

contact con =ContactManager.getCon();

system.assertEquals(c.LastName, con.LastName);
test.stopTest();

}

@istest 

private static void postTest(){
Id conid = ContactManager.postCon('Hijiji', 'H@gmail.com');
contact c = [select id ,lastname, email from contact where id = :conid];
system.assertEquals('Hijiji', c.LastName);//bu post diye parametre gonder yetsin
}

@istest 

private static void deleteTestcon(){
    test.startTest();

    contact c = [select id, lastname, phone, email from contact limit 1];
    string url = system.Url.getSalesforceBaseUrl().toExternalForm();//mock yapmmamizin sebbei bu satir disaridan almiyorz
     Restrequest request = new Restrequest();
     request.httpMethod = 'Delete';
    
     request.requestUri = url + '/services/apexrest/Contact/' + c.id;
     RestContext.request = request;
    
    string con =ContactManager.deleteContact();
    
   system.assertEquals('Deleted', con);
    test.stopTest();

}

@istest 
private static void putTest(){
test.startTest();

Id conid = ContactManager.putContact(null, 'Hiji', 'h@gmail.com', '829302');
system.assert(conid!=null);//putda parametre var. ver update alib almadigin yoxla. disariya gomnderen bir method
test.stopTest();
}

@istest 
private static void patchTestCon(){

test.startTest();
contact c = [select id, lastname, email, phone from contact limit 1];
c.LastName = 'Up one';
string js = JSON.serialize(c);

RestRequest request = new RestRequest();
request.requestBody = blob.valueOf(js);
request.httpMethod = 'Patch';
RestContext.request = request;

contact con = ContactManager.patchCon();

system.assertEquals('Up one', con.LastName);
test.stopTest();


}















   /* @istest
    private static void getContactTes(){
test.startTest();
contact c = [select id from contact limit 1];
string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();
string uri = homeurl + '/services/apexrest/Contact/' + c.id;

//2.asama request hazirlanmasi
        RestRequest request =  new RestRequest();
        request.requestURI= uri;
        request.httpMethod = 'Get';
        RestContext.request = request;

        Contact c2 = ContactManager.getCon();

        //system.assertEquals(c.email, c2.email);
        system.assertNotEquals(null,c2.id);
       
        test.stopTest();
    }


    @istest

    private static void postConTest(){

Id conid = ContactManager.postContact('Hiji', '4874238', 'h.@gmail.com', 'hh');

system.assert(conid!=null);

    }


    @istest

    private static void deleteCon(){
        test.startTest();
//1.asama url hazirlanmasi
contact c = [select id from contact limit 1];
string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();
string uri = homeurl + '/services/apexrest/Contact/' + c.id;

//2.asama request hazirlanmasi
        RestRequest request =  new RestRequest();
        request.requestURI= uri;
        request.httpMethod = 'Delete';
        RestContext.request = request;
//3.asama test et clasi

string actual = ContactManager.deletecon();

system.assertEquals('Deleted', actual);
test.stopTest();

    }

    @istest

    private static void putConTest(){
Id conid = ContactManager.putContact(null, 'Hajili', '76473','g.@gmail.com');
system.assert(conid!=null);

    }

    @istest 
    private static void patchMethod(){
        test.startTest();
//1.asama boyinin hazirlanmasi
    contact c2 = [select id, lastname, email, phone from contact limit 1];
    c2.LastName = 'Update Hiji Test';
    string jasonstring = JSON.serialize(c2);
//2.asama resreq ve con hazirla
    RestRequest request = new RestRequest();
    request.requestBody = Blob.valueOf(jasonstring);
    request.httpMethod  = 'Patch';
    RestContext.request = request;
//3.asama test yap...
Contact con = ContactManager.patchContact();
system.assertEquals('Update Hiji Test',con.LastName);
test.stopTest();


    }*/
}