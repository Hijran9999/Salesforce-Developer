public  class BatchApexTurkishRevsnApexSchedule implements  Schedulable{
    public void execute(SchedulableContext sc){

        BatchApexTurkishRevsnHomeasgnApex hn = new BatchApexTurkishRevsnHomeasgnApex();
        Database.executeBatch(hn, 5);
    }


}
S