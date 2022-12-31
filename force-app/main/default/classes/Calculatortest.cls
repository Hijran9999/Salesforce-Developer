@istest
public class Calculatortest {
 @istest
    private static void welcomeMessageTest(){
Calculator h = new calculator();
h.welcomeMessage();
    }
    @istest
    private static void printPrivateMessageTest(){
        Calculator h1 = new calculator();
       
h1.printPrivateMessage();
    }
    @istest
    private static void printNewMessage(){
        Calculator h2 = new calculator();
h2.printNewMessage('hiji');
    }
    @istest
    private static void printAndReturnMessageTest(){
        Calculator h3 = new calculator();
 h3.printAndReturnMsg('kol' );

    }
@istest
    private static void addTest(){
        Calculator h4 = new calculator();
   integer h =  h4.add(3, 7);
   system.assertEquals(10, h);
    }
    @istest
private static void addtest2(){
    Calculator h5 = new calculator();
integer h = h5.add(6, 1, 3);
system.assertEquals(10, h);

}
@istest
private static void checklepYearTest(){
    Calculator h = new Calculator();
    date ocloseDate = date.newInstance(2022, 9, 30);
    h.checkLeapYear(ocloseDate);
    //test it
}

}
