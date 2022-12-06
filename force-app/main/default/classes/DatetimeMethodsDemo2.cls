public  class DatetimeMethodsDemo2 {
    public void calculateAgeInMonth() {
date birthDate = date.newInstance(1988, 02, 19);
system.debug(birthDate);

date todayDate = date.today();

integer ageInMonths = birthDate.monthsBetween(todayDate);
system.debug(ageInMonths);

    }

    public void calculateAgeInDays(){
    Date birthDate = date.newInstance(1988, 02, 19);
    Date todayDate = date.today();

    integer ageInDays = birthDate.daysBetween(todayDate);
    system.debug(ageInDays);
}

public void printSubscriptionEndDate(){

    Date subscriptionStartDate = date.today();
    Date subscriptionEndDate = subscriptionStartDate.addDays(999);
    system.debug(subscriptionEndDate);



    date pastSubscriptionDate = subscriptionStartDate.addDays(-999);
    system.debug(pastSubscriptionDate);
}

public void printOfferEndDateTime(){
  
    datetime dtNow = Datetime.now();
    datetime offerEndDateTime = dtNow.addHours(51);
    system.debug( offerEndDateTime);

}
public void birthdateInMilliSeconds(){
    Datetime birthTime = Datetime.newInstance(1988, 02, 19, 9,6,8);
    long longBirthDate = birthTime.getTime();
    system.debug(longBirthDate);
}
}
