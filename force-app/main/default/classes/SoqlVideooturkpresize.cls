public  class SoqlVideooturkpresize {
    public static void allContacts() {

list<contact> listContacts = [select name, phone from Contact];
system.debug(listContacts);

    }

    public static void latestContactOnly(){
contact latestCnt = [select name, email from contact order by  CreatedDate desc limit 1];
system.debug(latestCnt);
system.debug(latestCnt.name);
system.debug(latestCnt.Email);
    }

    public static void contactWithEmail(){

list<contact> listEmailContacts = [select id, name, email from contact where email!=''];
system.debug('listemizin kayit sayisi ' + listEmailContacts.size());
for(contact eachCnt : listEmailContacts){

system.debug(eachCnt.Name);
system.debug(eachCnt.Email);
}
    }

    public static void contactFiltername(string firstName){
list<contact> filteredContacts = [select name, email, phone from contact where firstName = :firstName];
system.debug('filter firstnamelr is ' + firstName);



    }
}
