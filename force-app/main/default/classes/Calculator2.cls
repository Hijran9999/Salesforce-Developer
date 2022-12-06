public  class Calculator2 {
    public void welcomeMessgae() {
system.debug('welcome');

    }

    public void printNewMessage(string msg){
    system.debug(msg);
}
public string printAndReturnMsg(string msg2){

string returnStr = msg2 + '..ok coool!';
return returnStr;

}

public integer add(integer a, integer b){
integer sum = a + b;
return sum;
}

public string add2(integer a, integer d, integer l){
integer sum2 = a + d + l;
    return  'h';
}
public boolean checkLeapYear(date dt){
integer year = dt.year();
boolean lp = date.isLeapYear(year);
return lp;

}
private void printPrivateMessage(){

    system.debug('gjhghsgd');
}
public integer age(date birthdate){
    integer a = 0;
    date today = date.today();
    integer daysAge = birthdate.daysBetween(today);
    a = integer.valueOf(daysAge/365);
    return a;


}
}