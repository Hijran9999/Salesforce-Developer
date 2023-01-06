public  class Planetler {
    public static integer  Planetlerimiz() {
List<string> planetler = new list<string>{'Dunya','Venus','Mars','Merkur','Saturn','Jupiter','Dunya'};
system.debug(planetler);
integer numbers;
if(!planetler.isEmpty()){
    system.debug('bu liste dolu');
   numbers = planetler.size();
   system.debug(numbers);
   system.debug(planetler.get(0));
   system.debug(planetler.get(numbers -1));
   system.debug(planetler.contains('Merkur'));
   system.debug(planetler.contains('Pluton'));
   for(string items : planetler){
   system.debug(items + ' gezegeni');
  //system.debug(item.add('Hijran'));

   }
}
else{
    system.debug('bu liste boss');
   

}
return numbers;
    }
 

}
