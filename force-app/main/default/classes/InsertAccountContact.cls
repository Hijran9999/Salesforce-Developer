public class InsertAccountContact {
   public static void insertAccountCon(string   accName, string cntName){
    account  a= new account();
    a.name =accName;
    insert a;
    contact c = new contact();
    c.LastName = cntName;
    c.AccountId = a.id;
    insert c;
   }
}
