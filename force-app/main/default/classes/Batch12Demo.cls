public class Batch12Demo {
   public static void printWelcome(){
    system.debug('Hosgeldiniz');
   }

   public static void welcomePerson(string n){
    system.debug('n is ' + n);
   }
   public static integer toplama(integer f, integer h){
    return f +h;
   }
   public static void createAccount(){
    account ac = new account();
    ac.name = 'Test';
    insert ac;

   }
   public static void updateAcc(){
    account acc = [select id, name from account where name = 'Salesforce' limit 1];
    acc.name = 'Salesforce Inc.';
    update acc;
   }
   public static void createContactOfAccount(){
    account acc = [select id, name from account where name = 'Softinnovas Inc.' limit 1];
    contact con = new contact();
    con.LastName = 'Contact';
    con.AccountId = acc.id;
    insert con;

   }
}
