

@isTest //is for class
public class Calculator3Test {
    private static void aNormalMethod() {
        system.debug('this is still allowed');
    }

    //Test method features.
   //1. static.
   //2. void
   //3. no parameters
   //4. test method can be Public or Private. 
   @isTest //is for method
   private static void testMessage() {
        //call two methods from here
        Calculator c = new Calculator();
        c.welcomeMessage();
        c.printNewMessage('printing from test method now.');
   }
   @istest
   private static void testAdd1() {
        Calculator c = new Calculator();
        integer sum1 = c.add(10,15);

        system.assertEquals(25, sum1);
   }

  private static void add4(){
calculator c1 = new calculator();

    integer sum = c1.add(10,15,25);
    system.debug(50,sum);
}
}
