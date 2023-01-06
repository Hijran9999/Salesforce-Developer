public  class ContactQueableapex implements Queueable {
    list<account> listac = new list<account>();

public ContactQueableapex(QueueableContext consept){
listac = consept;

}
   public void execute(QueueableContext qxt){

    List<Contact> listcon = new list<contact>();
    for(account ac :listac ){
        contact con = new contact();
        con.LastName = 'Mery Doee';
        con.AccountId = ac.id;
        listcon.add(con);
    }
    insert listcon;
   }
}
