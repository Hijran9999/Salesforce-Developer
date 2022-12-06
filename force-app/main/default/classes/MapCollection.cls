public  class MapCollection {
//1.son bir haftanin sicakligini alan method yazin bu method her sehri sicaklik dereceleriyle beraber yazdirsin
public static void printDegree(map<string, list<decimal>> degreesMap){
system.debug(degreesMap);//degrees onu qarsilayr axi qabagina yazdg kodu
system.debug('New Yorkun sicaklik deyerleri ' + degreesMap.get('New York'));
//keysetle aldi butun keyleri for la dondur dynamic olsun
for (string city : degreesMap.keySet()){
    
system.debug(city + ' sehrinin sicaklk degerlerincc ' + degreesMap.get(city));//cityalmisdi keysete bilgileri boyle boyle getle de aldik..

//2. son bir haftanin ortalamalrini bulub sehir isminin sicaklik ortalamsi value olarak alan bir map olustur..


}

}
public static void averageDegree(map<string, list<decimal>> degreesMap2){
map<string,decimal> averageMap = new map<string,decimal>();

for(string  city : degreesMap2.keySet()){

decimal sum  = 0;

for(decimal eachDegree : degreesMap2.get(city)){
sum+=eachDegree;


}
decimal average = sum/degreesMap2.get(city).size();
averageMap.put(city,average);
}

system.debug('sehirlerin haftalik sicakliklari = ' + averageMap);


//2.son bir haftanin ortalam sicaklig ortalamilirini bulsun



set<string> less10 = new set<string>();
set<string> more10 = new set<string>();


for(string city : averageMap.keySet()){


    if(averageMap.get(city)>10){
more10.add(city);


    }else{

less10.add(city);

    }
}
system.debug('sicaklik ortalamsi 10 dereceden buyuk olan sehirler' + more10);
system.debug('sicakligi 10dan az olanlar ' + less10);
}

}
