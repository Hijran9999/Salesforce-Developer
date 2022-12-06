map<string, string>  mapCntCurrency = new map<string,string>();
mapCntCurrency.put('Usa', 'Dollar');
mapCntCurrency.put('Azerbaijan', 'Manat');
system.debug(mapCntCurrency);
map<string, string>  mapCntCapitalCities = new map<string,string>();
mapCntCapitalCities.put('Azerbaijan', 'Baku');
system.debug(mapCntCapitalCities);
map<string,integer> map1 = new map<string,integer>();
map1.put('Men', 1);
system.debug(map1);
string usaCur = mapCntCurrency.get('Usa');//value of
system.debug(usaCur);
string c = 'Azerbaijan';
string cnn = mapCntCurrency.get(c);
system.debug(c + ' hjkk' + cnn);
//.getle mapda valueni alirq
//basqa yerlerde indexi key valueni at oraaa
//key set -->returns set<key-datatype>
set<string> contrySet = mapCntCurrency.keySet();
system.debug(contrySet);


list<string> currencyList  =   mapCntCurrency.values();
system.debug(currencyList);
//eyni list and set ucun olan for loop yoxdu burda
//keyset set of keys (country)
//second type
set<string> countrySet = mapCntCurrency.keySet();//keyset set doner value list verir
for(string eachCountry : countrySet){
    system.debug(' each country is ' + eachCountry);
    
    string eachCurrency = mapCntCurrency.get(eachCountry);//dolar gibi
    system.debug('each currency is ' + eachCurrency);
    system.debug('eachcontry is ' + eachCountry + ' eachcurency is '  + eachCurrency);
}
//mapin icine forla giremyrm ..  keyset(); 1ci key alinr sonra value
