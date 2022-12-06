public class primitiveDataTypeDemo2 {
    public  void printDate() {
        system.debug('create new date instance');

        Date newDate = Date.newInstance(1995, 2, 17);
        system.debug('new date is ' + newDate);
        Date newDate2 = Date.newInstance(2021, 10, 7);
        system.debug('new date2 is ' + newDate2);
     Date todayDate = date.today() ;
     system.debug('today '+ todayDate);  
     Time myTime = Time.newInstance(2, 15, 45, 55);
     Time meTime = Time.newInstance(4, 20, 34, 54);
     system.debug('my time is ' + myTime);

     system.debug('me time is ' + meTime);
    }
public void printNewDateTime(){
Date newDate =date.today();
Time newtime = Time.newInstance(2, 15, 45, 55);
DateTime dt1 = DateTime.newInstance(newDate,newTime);
system.debug('dt1 is ' + dt1);


Datetime dt2 = Datetime.newInstance(2001,4,14);
system.debug('dt2 ' + dt2);
Integer year = 2022;
Integer month = 7;
Integer dayInMonth = Date.daysInMonth(year, month);
for(Integer i =1; i<=30; i++ );
Datetime date1 = Datetime.newInstance(2022, 7, 10);
String dayInwords = date1.format('EEEE');
system.debug(date1 + '==> ' + DayInwords);
}
    }

    
