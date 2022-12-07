public class DmlVideoozetydm {
    public static void createContact(){
contact c = new contact();
c.Salutation = 'MR.';
c.LastName= 'must';
insert c;



    }
    public static void createContact1(){
        contact c = new contact();
        c.Salutation = 'MR.';
        c.LastName= 'must';
        system.debug(c);

        insert c;
    
system.debug('after dml c= ' + c);
c.FirstName = 'Melon';
update c;
system.debug('after dmlc = ' +c);

    }

    public static void updateOneContact(){


contact c1 = [select id, firstname, lastname from contact where lastname = 'Must'  limit 1];
c1.FirstName = 'Elon';
c1.Phone = '6438748';
c1.Email = 'c@c.com';
update c1;




    }
}