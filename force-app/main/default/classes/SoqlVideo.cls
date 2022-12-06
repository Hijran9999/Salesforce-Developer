public class SoqlVideo {
    public static void  allContacts() {
list<contact> listOfContacts = [select id, name, phone  from Contact];
system.debug(listOfContacts);
    }
public static void latestContact(){

    Contact latestCnt = [select name, email from contact order by CreatedDate desc limit 1];
    system.debug('latest contact is.. ' + latestCnt);
    string latestCntName = latestCnt.Name;
    system.debug('contact is '  + latestCntName);
    system.debug('latest email is ' + latestCnt.Email);
}

public static void contactWithEmail(){

list<Contact> listOfEmailContacts = [select id, name, email from contact where email != ''];
system.debug(listOfEmailContacts.size());
for(contact eachCnct : listOfEmailContacts){

    system.debug(eachCnct.Name.toUpperCase() + ' and email is ' + eachCnct.Email.toUpperCase());
    system.debug('----');
   
}

}
public static void contactFilter( string fname){
   
list<contact> filteredContacts = [select name, email, phone from contact where FirstName = :fname ];
system.debug(filteredContacts);




}

}
