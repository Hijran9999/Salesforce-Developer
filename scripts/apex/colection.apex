//Collection.ListAssignment(1);
//Collection.LListAssignment(13);
//Collection.ListAssignment(5);
//Collection.ListAssignment(2);
//Collection.ListAssignment(9);
list<string> shoppingList= new list<string>();
shoppingList.add('Camera');
shoppingList.add('headphone');
shoppingList.add('clothes');
shoppingList.add('bitcoin');
system.debug(shoppingList);

string item1 = shoppingList.get(1);
string item2 = shoppingList.get(3);
string item3 = shoppingList.get(0);
system.debug(item1);
system.debug(item2);
system.debug(item3);
//bir yol isimlist[2] ya da isimlist.get(2) yoxdusa -1 olur
//addall ele heminkin kecmis idi de ustune gel a=system debugda

list<date> birthDateList = new list<date>();
date d1 = date.newInstance(1992, 02, 12);
birthDateList.add(d1);
date d2 = date.newInstance(1967, 02, 12);
birthDateList.add(d2);
date d3 = date.newInstance(1944, 02, 12);
birthDateList.add(d3);
system.debug(birthDateList);

birthDateList.sort();
system.debug(birthDateList);
// sort yaz birthdate ynina sort etsin baklacadn boyuye system debugda yazdr

list<integer> lst =  new list<Integer>{1,2,3};
system.debug(lst);

//eger yuxaridaki kimi yaninda list duzeldirsense { bracktden qoy}


list<string> isimList = new list<string>();
isimList.add('Hijran');
isimList.add('Eda');
isimList.add('Gulsah');
isimList.add('Emily');


system.debug('Isim listemiz = ' + isimList);
system.debug('Index ' +isimList[2] );
integer elemantSayisi = isimList.size();
system.debug(elemantSayisi);
list<string> isimlist2 = new list<string>{'Eric', 'Ozlem','Kenul'};
isimList2.addAll(isimlist2);
system.debug('Add oldan sonra ' +isimList);

//sorttisi index yerleri de deysr azdan coxa
//yada alfabetic sirayle
isimList.sort();
system.debug(isimlist);
ListCollectionTurk.printNameList(isimList);
//is emtpy tercih olunuyo
List<Decimal> declist = new list<decimal>{11.5,23.4,22.4,3.5};
decimal toplam = ListCollectionTurk.listEachItemSum(decList);
system.debug(decList + ' listesinin elemantlarinin toplami esittir ' +toplam );

ListCollectionTurk.averageList(declist);

list<string> sList = new list<string>{'eric','elma','ayva','cilek','nar'};

system.debug('listemizin son elmani ' + ListCollectionTurk.listyap(sList));