 //What is JSON format?
 Account ac = {name = 'Test account short video', type= 'Prospect', industry = 'IT', annualrevenue= 1,000,000}

 {

    "Name" : "Test Account",
    "type" : "Prospect",
    "industry" : "IT",
    "AnnualRevenue" =1000000
 }
//2. how to convert sobject records into JSON format?

Class-JSON
Method - serialize//hepls us to convert records in to jason format
list<account> listacc = [select id, name, type, industry, annualrevenue from Account where annualrevenue !=null and industry !=null limit 3];
string jsontstring = JSON.serialize(listacc);
system.debug(jsontstring);
//How to convert JSON intooooo sobject records???
//dmdl also we can do
Class -JSON
method- deserialize(jsonstring, apextype)
 string jsontstring = '{"Name":"Test Account 10", "Type":"Prospect","Industry":"Construction"}';
 Account acc= (Account)JSON.deserialize(jsontstring,Account.class);
 insert acc;
//buda xml variantidii
'{"Name":"Test Account 10", "Type":"Prospect","Industry":"Construction"}';
<Account> 
<Name> Test Ac</Name>
<Type> Prospect</Type>
<Industry> Construction</Industry>

</Account>
Restcalloutsshortvideo27january.getAnimals();
Restcalloutsshortvideo27january.getUsers();
