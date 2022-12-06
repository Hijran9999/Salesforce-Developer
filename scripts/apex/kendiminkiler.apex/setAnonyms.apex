set<integer> sayilar = new set<integer>{1,2,3,4};
sayilar.add(7);
system.debug(sayilar);
set<string> meyveler = new set<string>{'elma','armud','Elma','Elma'};
system.debug(meyveler);
list<string> sebzeler = new list<string>{'havuc','kelem','xiyar','Xiyar','xiyar'};
system.debug(sebzeler);
//set<string> sebzeler1 = new set<string>{'havuc','kelem','xiyar','Xiyar','xiyar'};
//system.debug(sebzeler1);
set<string> setSebzeler = new set<string>();
setSebzeler.addAll(sebzeler);
system.debug(setSebzeler);



set<integer> s1;
system.debug(s1);//bunun deyeru null
Set<Integer> s2 = new Set<Integer>();
system.debug(s2);//bunun ici bosdu amma icine elave etmek olar
//Boolean emptyResult1 = s1.isEmpty();
//system.debug(emptyResult1);//error olar declare etmisen amma hecne elave etmemisen..

Boolean emptyResult2 = s2.isEmpty();
system.debug(emptyResult2);//bos diye yuxaridaki set integer boleanla bosdu true diye dondurdu

set<string> hayvanlar = new set<string>{'maymun','yilan','aslan'};
system.debug(hayvanlar);
boolean result1 = hayvanlar.contains('yilan');
system.debug('listenin icinde kus varmi?? ' + result1);

boolean result2 = hayvanlar.contains('balik');
system.debug('listenin icinde baliq varmi?? ' + result2);

Set<String> hayvanlar2 = new Set<String>{'kus','aslan','baliq','maymun','yilan'};
boolean result3 = hayvanlar2.containsAll(hayvanlar);
system.debug('hayvanllar listesi set yapisi hayvanlar2 setinin icinde varmi? ' + result3);
integer elemanSayisi = hayvanlar.size();

system.debug('hayvanlar setindeki hayvan sayisi = ' + elemanSayisi);

hayvanlar.clear();
system.debug(hayvanlar);
integer g = hayvanlar.size();//intgeer deyere assign etmesen 0 vermir sayi kimi ancaq {} olur..
system.debug(g);

