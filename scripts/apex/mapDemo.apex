string month1 = MapDemo.retrieteveMonth(4);
system.debug(month1);
string month2 = MapDemo.retrieteveMonth(28);
system.debug(month2);*/
map<string, integer> itemQuantityMap = new map<string, integer>();
itemQuantityMap.put('Apple',6);
itemQuantityMap.put('Orange',3);
itemQuantityMap.put('Football',6);
itemQuantityMap.put('Notebooks',6);

integer sizemap = itemQuantityMap.size();
system.debug(sizemap);
string getQuantityOf = 'Apple';
integer quantityIs = itemQuantityMap.get(getQuantityOf);
system.debug(getQuantityOf + ' quantity is ' + quantityIs);

string getquantityOf2 = 'Orange';
integer quantyti2 = itemQuantityMap.get(getQuantityOf2);
system.debug(getQuantityOf2 + ' quantity is ' + quantyti2);
string getQuantityOf4 = 'Football';
integer quantity4 = itemQuantityMap.get(getQuantityOf4);
system.debug( getQuantityOf4     + ' quantity is ' + quantity4);

string getQuantityOf3 = 'Apples';

if(itemQuantityMap.containsKey(getQuantityOf3)){
    integer quantity3 = itemQuantityMap.get(getQuantityOf3);
system.debug(getQuantityOf3 + ' quantity is ' + quantity3);

}else{
system.debug(getQuantityOf3 + ' not in syllables');


}
 //keys == set == keySet()
 //values == list == values
 set<string> items = itemQuantityMap.keySet();
 system.debug(items);
 list<integer> quantities = itemQuantityMap.values();

 integer sumOfQ = 0;
 for(integer q : quantities){
sumOfQ = q;


 }system.debug(' number of items ' + sumOfQ);


map<string,string> sehirlerCodelari = new map<string,string>();
sehirlerCodelari.put('34001','Istanbul');
sehirlerCodelari.put('34001','Izmir');//last update olani goturer cunki iki dene key sozu gotrmez eyni anda
sehirlerCodelari.put('659003','Kocaeli');
sehirlerCodelari.put('89000','Istanbul');
system.debug(sehirlerCodelari);

map<string, integer> m1 = new map<string, integer>();
m1.put('m1',1);
m1.put('iki',2);
system.debug(m1);


map<integer,string> m3 = new map<integer, string>();
m3.put(1,'bir');
system.debug(m3);

map<string, list<string>> m4 = new map<string, list<string>>();
list<string> ulke1 =  new list<string>{'istanbul','Ankara'};
m4.put('Turkiye', ulke1);
list<string> ulke2 = new list<string>{'texas','californiya'};
m4.put('USA', ulke2);
system.debug(m4);



Map<String,Integer> itemQuantityMap =  new Map<String,Integer>();
itemQuantityMap.put('Apple', 5);
itemQuantityMap.put('Banana', 6);
itemQuantityMap.put('Orange', 3);
system.debug(itemQuantityMap);

string itemOne = 'Apple';
integer itemOneVal = itemQuantityMap.get(itemOne);
system.debug(itemOne + ' ' + itemOneVal);



string itemTwo = 'Apples';
boolean cavab = itemQuantityMap.containsKey('Apple');
system.debug(cavab);
if(cavab){

system.debug(itemTwo + ' ' + itemQuantityMap.get(itemTwo));


}else{


    system.debug(itemTwo + ' key yoxdu ');
}
set<string> itemKeys = itemQuantityMap.keySet();
system.debug(itemKeys);
list<integer> itemValues = itemQuantityMap.values();
system.debug(itemValues);
integer sum  =0;
for(integer eachValue : itemValues){
    sum +=eachValue;

}
system.debug(sum);