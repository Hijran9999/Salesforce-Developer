List<String> sehirler = new list<string>{'Istanbul','NewYork'};
system.debug(sehirler);
Set<String> ulkeler = new set<string>{'Turkiye','USA'};
system.debug(ulkeler);
set<string> sehirlerSet = new set<string>();
sehirlerSet.addAll(sehirler);
system.debug(sehirlerSet);

map<integer,string>  plakalar  = new map<integer,string>();
plakalar.put(34,'Ismir');
plakalar.put(41,'Izmit');
system.debug(plakalar);

Map<string, list<string>> yoresel = new Map<string, list<string>>();
list<string> y1 = new list<string>{'Baklava'};
yoresel.put('Gazientep',y1);
list<string> y2 = new list<string>{'Dolma'};
yoresel.put('Baku',y2);
system.debug('yoreselller ' + yoresel);
