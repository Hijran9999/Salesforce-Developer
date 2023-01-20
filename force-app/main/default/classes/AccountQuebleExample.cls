public class AccountQuebleExample implements  Queueable {
    list<account> listac = new list<account>();
    public AccountQuebleExample(list<account> acs){

listac = acs;


    }
    public void execute(QueueableContext qc){
        list<account> s = new list<account>();
        for(account ac : listac){
            account a = new account();
            a.id = ac.id;
            a.Name= ac.name + ' == Si';
            s.add(a);
        }
        update s;
    }
}
//zincirleme islemler...