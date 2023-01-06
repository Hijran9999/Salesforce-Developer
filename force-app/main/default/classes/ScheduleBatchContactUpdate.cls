public class ScheduleBatchContactUpdate  implements Schedulable{
    public void execute (SchedulableContext sc){

        Database.executeBatch(new  BatchContactUpdate());
    }
}
