public  class BenimClass {
    public static void benimMethod(map<string, integer> benimMapp) {

list<string> buyukKitab = new list<string>();
list<string> kKitab = new list<string>();

set<string> value1 = benimMapp.keySet();
for(string eachSayfa : value1){

if(benimMapp.get(eachSayfa)>300){
    buyukKitab.add(eachSayfa);




}else{
   kKitab.add(eachSayfa);
}
}

set<string> value2 = benimMapp.keySet();

integer highestNum = 0;
for(string eachSayfa : value2){

if(highestNum < benimMapp.get(eachSayfa)){//kucukse guncelle rakamlari

    highestNum =benimMapp.get(eachSayfa);

}

}
system.debug('en kalin bu kitab ' + highestNum);

system.debug(' sayfa kalin kitab '  + buyukKitab);

system.debug('sayfa az  ' + kKitab);

    }


}
