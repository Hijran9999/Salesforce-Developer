@istest
public class DmlAssignmntEvOdeviTest {
    @istest
  private static void asgTest(){

    account h = new account();
    h.name= 'iii';
    insert h;
    DmlAssignmentevOdevi.asg1();
List<Account> aclist =[select id, name from account where name = 'iii'];
system.assertEquals(1, aclist.size());

  }
  @istest
  private static void update_aaaTest(){

    account ca = new account();
    ca.name = 'Accountr';
    insert ca;

    
 ca.name = 'update one';
    update ca;
DmlAssignmentevOdevi.update_aaa();

list<account> sl = [select id, name from account where name = 'update one'];
system.assertEquals('update one', sl[0].name);
  }
}
