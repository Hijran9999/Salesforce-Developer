public class AccountQuebleExample implements  Queueable {
    list<account> listac = new list<account>();
    public AccountQuebleExample(list<account> acs){

listac = acs;


    }
    public void execute(QueueableContext qc){
        for(account ac : listac){
            ac.Name+=' == Si';

        }
        update listac;
    }
}
