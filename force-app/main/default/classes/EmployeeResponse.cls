public with sharing class EmployeeResponse {
    public integer error;
    public string message;
    public  list<EmployeeWrapper> data;

    public class EmployeeWrapper{
public integer id;
public string gender;
public string name;
public string email;
public string designation;
public string phone_number;
public string complete_address;
public string username;

    }

//variebllerin icine alinir bilgiler
//coklu bilgi 






















}
//deseralize using wrapper class tehn message object created