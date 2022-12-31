public  class Calculator {
   
     public void welcomeMessage(){
        system.debug('welcome to Apex calc.' );

        printPrivateMessage();
        printNewMessage('allow');

    }

   public void printPrivateMessage(){
        system.debug('this is pr');
    }
    public void printNewMessage(string msg){

        system.debug(msg);
    }

    public string printAndReturnMsg(string msg2){
        system.debug(msg2);
        string returnStr = msg2 + 'cool';
        return returnStr;
    }
    public integer add(integer a, integer b){
integer sum = a + b;
return sum;

}


public integer add(integer a, integer b, integer c){


    integer sum = a+ b + c;
    return sum;
}
// param date// return type is boolean

public boolean checkLeapYear(date dt){
  integer year = dt.year();//built in method
   boolean lp = date.isLeapYear(year);//isleapyear is also built in method of date class
    return lp;
}
    }

