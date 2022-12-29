@istest

public class AcTriggerhandkerTest {
    @istest
    private static void createContact(){
account ac = new account();

ac.name = 'Demo';
insert ac;

ac.name = 'Demo update';
update ac;

    }
}
