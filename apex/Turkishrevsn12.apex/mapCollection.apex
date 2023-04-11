map<string, List<decimal>> sehirlerHavaDurumu = new map<string, List<decimal>>();
list<decimal> istanbulOfHot = new list<decimal>{11.4,15.4,21.2,9.5,17.3,12.3,22.2};
//mapi paramter olarag gonderdim apexde olustur her methoda nunu gonder
sehirlerHavaDurumu.put('istanbul', istanbulOfHot);
list<decimal> parisOfHot = new list<decimal>{6.8,25.7,21.2,9.5,17.3,12.4,7.9};


sehirlerHavaDurumu.put('Paris', parisOfHot);

list<decimal> bakuOfHOt = new list<decimal>{11,2,3,17.3,12.3,22.2};
sehirlerHavaDurumu.put('Baku', bakuOfHOt);
list<decimal> newYorkOfHot = new list<decimal>{1.2,3.5,14.3,2,2.6};
sehirlerHavaDurumu.put('New York', newYorkOfHot);
list<decimal> torontoOfHot = new list<decimal>{11.9,15.4,21.6,9.5,17.3,12.3,22.9};
sehirlerHavaDurumu.put('toronto', torontoOfHot);
MapCollection.printDegree(sehirlerHavaDurumu);
MapCollection.averageDegree(sehirlerHavaDurumu);
