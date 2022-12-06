public class Devasgnmnts {
    public static void method1() {

list<contact> lstcnt = [select id, name, Account.id, account.name from contact];

for(contact eachcont : lstcnt){

system.debug(eachcont.account.id +  ' , ' + eachcont.Account.Name);

list<account> lstAcc = [select id, name, (select id, name from contacts) from account];
for(Account eachaccount : lstAcc){

list<contact> contactlistemiz = eachaccount.Contacts;
for(contact eachcnts : contactlistemiz){

system.debug(eachcnts.id + ' , ' + eachcnts.name);

integer hjhkj = [select count() from contact where name like '%A%' ];

system.debug(hjhkj);
}


}



system.debug(lstcnt);
    }
}


public static void soqasngmnt(){

list<contact> lstcnt = [select id, account.id, account.name from contact];
for(contact eachcontc : lstcnt){
string id = eachcontc.Account.id;
string accnme = eachcontc.Account.name;
system.debug(id + ' , ' + accnme);

}

}

public static void method2(){
list<account> lstacnt = [select id, name, ( select id, name from contacts) from account];
for(account eachacc : lstacnt){
list<contact> listContacts = eachacc.Contacts;
for(contact eachcount : listContacts){
string contId = eachcount.id;
string contName = eachcount.name;
system.debug( contId + ' , ' + contName);



}

}

}
}