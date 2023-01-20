public  class AccountCshedulable  implements Schedulable{
  public void execute(SchedulableContext sc){
    //we can call any method of any apex class
    //or we can directly write some apex code here
    //or we can call future, queble, for batch
    //batch is recomended beacuse if we have lots of records, we can progress
    Database.executeBatch(new accountsBatch());
  }
}