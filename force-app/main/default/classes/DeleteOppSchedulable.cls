public  class DeleteOppSchedulable implements Schedulable{
    public void execute(SchedulableContext sc) {

BatchApextask n = new BatchApextask();
        Database.executeBatch(n, 200);
    }
}
