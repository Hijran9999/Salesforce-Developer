public  class SoqlDemo {
    public  static void accountSoql_1() {
list<account> listacc= [select id, name from account where name like '%a%'];
system.debug(listacc);
    }
public static void accountSOQL_11(){
    Account acc = [select id, name, phone from account order by CreatedDate desc limit 1];
    system.debug(acc);
}
public static void  accountSOQL2(){


    Account acc = [select id, name, phone, accountNumber from account order by CreatedDate desc limit 1 ];
system.debug(acc);
string accName = acc.name;
string accPhone = acc.phone;
system.debug(accName + ' ' + accPhone + ' ' + acc.AccountNumber);


}
public static void accountSOQL3(){

    list<account> listacc = [select id,name, phone,shippingCity,  AccountNumber from account order by Createddate desc];
    system.debug(listacc);
    for(account eachacc : listAcc){

        string accName = eachAcc.name;
        string accPhone = eachacc.phone;
        system.debug(accName + ' ' + accPhone + ' ' + eachacc.AccountNumber);

system.debug(eachAcc.ShippingCity);

    }
}
public static void accountSOQL_filter(string accNameFilter){

    list<account> listAcc = [select id,name, phone from account where name = :accNameFilter];
    system.debug(listAcc);
}
public static void accountSOQL_filter(list<string> accNames){
list<account> listacc = [select id,name, phone from account where name  IN : accNames];
system.debug(listacc);

}
}