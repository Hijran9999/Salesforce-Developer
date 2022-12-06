public class ListCollectionTurk {
    public  static void printNameList(list<string>addlist) {
       /* if(addlist.size()>0){
            integer count = 1;
for(string names : addlist ){
    system.debug('for donguusu ' + count + ' defa dondu');
    system.debug(names);
    count++;
}
        }*/
if(!addlist.isEmpty()){
    integer count = 1;
for(string names : addlist ){
    system.debug('for donguusu ' + count + ' defa dondu');
    system.debug(names);
    count++;

}
    }
}
//decimal bir liste alan parametere olarak alan ve bu listenin elemnatlarini toplmini dondursun bir metid yazin 
public static decimal listEachItemSum(list<decimal> declist){
Decimal sum;
if(!declist.isEmpty()){
    sum = 0;
    for (decimal eachItem : declist){
        sum += eachItem;

    }
}
return sum;
}
//paarametre olarak decimal bir liste alan ve bu listenin  elemantlarinin ritmetik ortasini return eden bir method yaz
public static decimal averageList(list<decimal>declis2t){
    decimal average;
    if(!declis2t.isEmpty()){
        
decimal topla = listEachItemSum(declis2t);
integer elemntSayisi = declis2t.size();
average = topla/elemntSayisi;
    }
    return average;
}
public static string listyap(list<string>myList){
    string sonElement;
    if(!myList.isEmpty()){
        integer lastIndex = myList.size()-1;
        sonElement = myList.get(lastIndex);
   

}


return sonElement;
}
}
//static can rahatligi
