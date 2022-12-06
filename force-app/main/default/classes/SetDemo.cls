public class SetDemo {
   public static void citySet(){
    set<string> cities = new set<string>();
    cities.add('Tokyo');
    cities.add('Lisbon');
    cities.add('Berlin');
    cities.add('Istanbul');
    cities.add('Baku');

system.debug('set of cities ' + cities);
   }
   public static void randomInteger(){
    set<integer> integerSet = new set<integer>();
    integerSet.add(10);
    integerSet.add(10);
    integerSet.add(12);
    integerSet.add(13);
system.debug(integerSet);
   }
   public static set<integer> setFromList(list<integer>intList){
    set<integer> intSet = new set<integer>();
    intSet.addAll(intList);
    return intset;
   }

   public static set<string> uppercaseSet(set<string> setStr){
//set<string> capsSet = new set<string> ();
set<string> retunrSet = new set<string>();

for(string eachStr : setStr){
    string tempStr = eachStr.toUpperCase();
    retunrSet.add(tempStr);
}


return retunrSet;


   }
}
//kodu at muellime