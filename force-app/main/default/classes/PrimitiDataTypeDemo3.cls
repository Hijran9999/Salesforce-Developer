public class PrimitiDataTypeDemo3 {
  public void printNewDateTime(){
    Datetime dt3 = datetime.newInstance(2021, 7,8,9,10,11);//pst zone
    system.debug('dt3 is ' + dt3);//gmt zone

    //Long longtime = 1341828183000L;
    Datetime dt4 = Datetime.newInstance(0);
    system.debug('dt 4 ==> ' + dt4);

    Datetime dt4_1 = datetime.newInstance(300000);
    system.debug('dt4_1 ' +dt4_1);
    long longTime =1453244654756L;

    Datetime dt4_2 = datetime.newInstance(longTime);
    system.debug('dt4_2 ' + dt4_2);
    Datetime dttt = datetime.now();
    system.debug('dttt is  ' + dttt);

    Datetime dt5 = datetime.newInstanceGmt(1998, 5, 24,5,8,10);
system.debug('dt5 is ' + dt5);
  }

}
