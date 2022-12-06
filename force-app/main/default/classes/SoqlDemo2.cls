public class SoqlDemo2 {
    public static void accountSOQL_1() {
list<account> listAcc = [select id, name from account where name like '%a%'];
system.debug('list of account is ' + listAcc);

account acc = [select id, name from account order by createdDate desc Limit 1];
system.debug('latests are ' + acc);

    }
public static void accountSOQL_11(){
Account acc = [select id, name, phone from account order by createdDate desc Limit 1];


system.debug('latest create account is ' + acc);
}
public static void accountSoql_2(){

    account acc = [select id, name, phone, accountNumber from account order by CreatedDate desc limit 1];

    string accName = acc.name;
    string accPhone = acc.phone;
    system.debug('accname is ' + accName + ' accphone is ' + accPhone + 'accountNumber is ' + acc.AccountNumber);
    
}
public static void accountSoql_3(){

    list<account> listAcc  = [select id, name, phone, accountNumber from account order by CreatedDate desc];
    system.debug(listAcc);
for(account eachAccount : listAcc){
string eachname = eachAccount.name;
string eachphone = eachAccount.Phone;
system.debug('eachname is ' + eachname + ' eachphone is ' + eachphone  + ' account number is ' + eachAccount.AccountNumber);
string accshipngcity = eachAccount.ShippingCity;
system.debug('account shippng is ' + accshipngcity);

}
}
//accnames olanda cox yeni list axtar hamsin deyrsen bir ad olanda name filter zad yaz..
public static void accountSoql_Filter(list<string> accNames){
list<account> listAcc = [select id, name, phone from account where name IN :accNames];
system.debug(listAcc);

system.debug(listAcc[1]);

}

}
