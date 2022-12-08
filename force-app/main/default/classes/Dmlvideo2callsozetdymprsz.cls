public class Dmlvideo2callsozetdymprsz {
    public static void createAccount() {


account acc = new account();

acc.name = 'Test Account Dml new';
insert acc;


return acc.id;
    }
    public static void createContact(){
        id accId = createAccount();
contact conn = new contact();
conn.LastName  = 'Contact Dml';
conn.AccountId = accId;//'003Do000003cwD1IAI';

insert conn;
    }
    public static void updateonecon(){

account acc = [select id, name from account order by createddate desc limit 1];
contact con = [select id, lastname from contact where AccountId = null limit 1];

system.debug('gelen contact ' + con);
con.AccountId = acc.id;
update con;
system.debug(con);

    }
}
