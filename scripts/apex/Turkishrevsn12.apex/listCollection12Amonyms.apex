List<string> sehirler = new list<string>{'Baku','Gence','Istanbul','New York'};
system.debug('listem ' +  '- '+   sehirler  );
Set<string> ulkeler = new set<string>{'azerbaijan','Azerbaijan','Turkey','USA'};
system.debug('ulke listem ' +  ' - ' + ulkeler );

set<string> sehirlerSet = new Set<string>();
sehirlerSet.addAll(sehirler);
system.debug(sehirlerSet);

map <Integer,string> plakalar = new map<integer,string>();
plakalar.put(34, 'Istanbul');
plakalar.put(10,'Baku');
plakalar.put(90,'Fuzuli');
plakalar.put(71,'Kirikkale');
system.debug(plakalar);
//sehirler ve yemekleri
map<string, list<string>> yoresel = new map<string, list<string>>();
list<string> y1 = new list<string>{'plov','quymak'};
yoresel.put('Gaziantep',y1);
list<string> y2 = new list<string>{'tantuni', 'cezerye'};
yoresel.put('Baku', y2);
system.debug(yoresel);
