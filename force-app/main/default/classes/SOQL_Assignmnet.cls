public  class SOQL_Assignmnet {
    public  static void soql_WhereCLause() {

list<Contact> listContact = [select id, lastName from contact where lastName like '%A%'];

integer var1 = listContact.size();
system.debug(var1);

    }

    public static void soql_Method(){
    list<contact> listContc = [select id, lastName, phone from contact ];
    for(contact eachRecord : listContc){



        system.debug(eachRecord);
    }



    }
}
