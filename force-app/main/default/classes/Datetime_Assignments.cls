public  class Datetime_Assignments {
    public void  diffofDate(){
        date tomorrowDate = date.newInstance(2022,11,17);
system.debug('Tomorrow date is ' + TomorrowDate);
date todayDate = date.newInstance(2022, 11, 16);
system.debug(todayDate);
integer differenceDays = todayDate.daysBetween(tomorrowDate);
system.debug(differenceDays);

    } 

    public void  timeCheck(){
    Datetime tomorrowDatetime = datetime.newInstance(2022, 11 , 16, 7, 0, 0);
    system.debug(tomorrowDatetime);
    Datetime var10DaysDateTime = Datetime.newInstance(2022, 11, 25, 9, 0, 0);
    system.debug('10 days later is ' + var10DaysDateTime);
    Long dateTimeLong = 12339874361L;
    datetime dtl = Datetime.newInstance(dateTimeLong);
    system.debug('Long time is ' + dtl);
Datetime adddays7 = tomorrowDatetime.addDays(7);
system.debug('after seven days ' + adddays7);
Datetime add10days = var10DaysDateTime.addDays(10);
system.debug('10 days after is ' + add10days);

    }

    public void cityInformation(){
        Datetime country = datetime.newInstance(1992, 02, 12, 7 , 0,0);
system.debug(country);
    }
public void MariaCurie(){
    date birthDate = date.newInstance(1867, 11, 7);
    date todayDate = date.today();
    Integer dateDiff = birthDate.daysBetween(todayDate);
    integer herAge = dateDiff/365;
    system.debug('Maria is ' + herAge + ' years old');

}

public decimal practiceThree( integer a, integer b){
   decimal sum = (a + b)/2;
    return sum;
}

public integer age(date birthdate){

integer a = 0;
date today = date.today();
integer daysAge = birthdate.daysBetween(today);
a = integer.valueOf(daysAge/365);
return a;
    } 
     public integer ages(date birthdate){
         integer b= 0;
         date bugun = date.today();
         integer dyAge  = birthdate.daysBetween(bugun);
         b= integer.valueOf(dyAge/365);
         return b;
     }
     public integer agees(date birthdate){
        integer c= 0;
        date bgn = date.today();
        integer dysAge = birthdate.daysBetween(bgn);
        c = integer.valueOf(dysAge/365);
        return c;
     }
     public integer ageees(date birthdate){
        integer d= 0;
        date now = date.today();
        integer dyssAge = birthdate.daysBetween(now);
        d = integer.valueOf(dyssAge/365);
        return d;
     }
     public integer ageeees(date birthdate){
        integer l =0;
        date noow = date.today();
        integer dysssAge = birthdate.daysBetween(noow);
        l = integer.valueOf(dysssAge/365);
        return l;
     }
     public integer yas(date birthdate){
        integer m =0;
        date indi = date.today();
        integer dayysAge = birthdate.daysBetween(indi);
        m = integer.valueOf(dayysAge/365);
        return m;
     }
}
