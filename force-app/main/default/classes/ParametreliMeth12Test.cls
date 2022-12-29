@istest
public class ParametreliMeth12Test {
 /* @istest
    public static void welcomemessageTest() {
ParamtrliMetolar12.welcomemessage('ama');
    }
    @istest
public static void karakteruzunluguTest(){
   integer result = ParamtrliMetolar12.karakterUzunlugu('hjkds');
        system.assertEquals(5, result,'karaketer uz');
    }
    @isTest 
    private static void toplamaTest(){
        integer result = ParamtrliMetolar12.toplama(1,2);
        system.assertEquals(3, result);
    }
    @istest
    public static void cikarmatest(){
        integer result = ParamtrliMetolar12.cikarma(6, 5);
        system.assertEquals(1, result);
    }
    @istest
    public static void ucretTest(){
      ParamtrliMetolar12.ucret('Benii', 9.4, 2);

}
@istest
public static void rakamsayitest(){
  
}*/

@istest
private static void welcomeMessageTest(){


ParamtrliMetolar12.welcomemessage('Hiji');

}
@istest
private static void karakterUzunluguTest(){
integer n =ParamtrliMetolar12.karakterUzunlugu('name');
system.assertEquals(4, n);

}
@istest

private static void toplamatest(){
integer s = ParamtrliMetolar12.toplama(4, 9);
system.assertEquals(13, s);
}

@istest
private static void cikarmaTest(){
integer result = ParamtrliMetolar12.cikarma(9, 8);
system.assertEquals(1, result);
}
@istest
private static void ucretTest(){

 ParamtrliMetolar12.ucret('sefiler', 10, 2);//birsey dondurmur deye system assert yox decimal zadda yazmadq..

}
    }
