
set<string> myFruits = new set<string>();
myFruits.add('pineapple');
system.debug(myFruits);

set<string> xFruits = new set<string>();
xFruits.add('pineapple');
xFruits.add('apple');
xFruits.add('armud');
boolean checkFruits = xFruits.containsAll(myFruits);
system.debug(checkFruits);

