SetDemo.citySet();
SetDemo.randomInteger();
list<integer> listInteger = new list<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(10);



set<integer> sInt = SetDemo.setFromList(listInteger);
system.debug(sInt);

 set<string> cities = new set<string>();
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Nairobi');
cities.add('Berlin');
cities.add('Berlin');
cities.add('Nairobi');
cities.add('Tokyo');
cities.add('TOKYO');
set<string> uppercaseCities = SetDemo.uppercaseSet(cities);
system.debug(uppercaseCities);
set<string> uppercaseCities2 = SetDemo.uppercaseSet(cities);
system.debug(uppercaseCities2);