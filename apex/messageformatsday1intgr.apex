//jSON : Javascript Object Notation
//single record
/*
{
    "Notation" : "Hijran",
    "Age" : 31,
    "Title" : "Developer",
    "Salary" : 7000.50
}
//2 students detail in JSON format
[
{
    "Notation" : "Mery",
    "Age" : 33,
    "Title" : "Developer",
    "Salary" : 8000.50

},

{
    "Notation" : "Hijran",
    "Age" : 31,
    "Title" : "Architect",
    "Salary" : 7000.50

}
]
//get an account record and convert the same into JSON format
list<Account> ac =  [select name, type, industry, annualrevenue from account where annualrevenue !=null and type !=null and industry!=null limit 4 ];
string jsonstr = JSON.serialize(ac);
system.debug(jsonstr);

*/
RestCallouts1dayinclass.getAnimals();
RestCallouts1dayinclass.getAirlines();
RestCallouts1dayinclass.getEmployees();
RestCallouts1dayinclass.getCaseUsingNC();

//RestCallout12Turkishrev2fevral.getUser();

RestCallouts1dayinclass.postAnimal();