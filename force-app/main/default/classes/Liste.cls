public  class Liste {
    public  static string benimListe(list<integer> intList) {
string mesaj = ' bu kitabin sayfa sayisi ..';
list<integer> h = new list<integer>();
list<integer> y = new list<integer>();

for( integer eachList : intList){
if(eachList>300){

h.add(eachList);
system.debug('kitabin sayfa sayisi ' + h);


}else {
y.add(eachList);
system.debug('sayfa sayisi ' + y);

}




}

integer highestNumber = 0;
for(integer eachItem: h){

    if(eachItem>highestNumber){

highestNumber = eachItem;

    }



}

system.debug('en yukseyi bu ' + highestNumber + ' rakamidir');

return mesaj;


}


}

