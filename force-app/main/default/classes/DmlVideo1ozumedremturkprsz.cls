public class DmlVideo1ozumedremturkprsz {
    public static void createMethodcontact() {
contact cn = new contact();
cn.Salutation = 'Mr.';
cn.LastName = 'Hiji contact Apex';
insert cn;
system.debug(cn);
}
public static void createUpdateContact(){
contact c = new contact();
c.LastName = 'Karaca';
insert c;
system.debug(c);
c.FirstName= 'Cem';

update c;



}

public static void updateonecon(){

contact con= [select id, lastname, firstname from contact where lastname = 'Karaca' limit 1];
con.firstname = 'Cem';
con.Phone = '798793849';
con.Email = 'con@gmail.com';
update con;
system.debug(con);
}





}