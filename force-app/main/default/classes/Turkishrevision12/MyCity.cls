public  class MyCity {
    public  void MyCity3(){

        string myJob = 'I am a salesforce developer';
        Boolean b1 = myJob.contains('force');
       system.debug(b1);
       Integer b2 = myJob.length();
       system.debug('This element length is: ' + b2);
       string b3 = myJob.toUpperCase();
       system.debug(b3);

    }
    public void dateMethod(){

        Date today = Date.today();
        system.debug('Today date is: ' + today);

       //bugunun tarihi
        date bugun = Date.today();
        //zaman simdiki saat current time
        time now = time.newInstance(23,22, 34, 23);
        Datetime myDateTime= Datetime.newInstance(bugun, now);
      
        Datetime fiftyHoursAfter = myDatetime.addHours(50);
        system.debug('Today s date is: ' + myDateTime);
        system.debug('50 hours later is: ' + fiftyHoursAfter);

//bugunun tarihi cekelim

        Date pazarCake = Date.today();
        system.debug('Today date is: ' + pazarCake);
//10 gun sonra eklemek taktigi
    Datetime fiftyDaysAfter = myDateTime.addDays(10);
    system.debug(fiftyDaysAfter);

    //simdinin saati

    time noow = time.newInstance(23,22, 34, 23);
    system.debug(now);



    }
}
