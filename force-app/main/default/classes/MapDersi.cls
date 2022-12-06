public  class MapDersi {
 public static void mapCollection(){

    map<string,integer> marksObtainInMath = new map<string,integer>{'0111CE112'=>40,'0111CE102'=>19,' 0111CE100'=>33,'0111CE098'=>40};
    marksObtainInMath.put('0112CE097',10);

    //system.debug('Student roll numbers are ' + marksObtainInMath.keySet());
    //system.debug('Marks are ' + marksObtainInMath.values());
  
    set<string> uniqueRollNumberSet1 = marksObtainInMath.keySet();

    system.debug(uniqueRollNumberSet1);
    list<integer> uniqueRollNumberList = marksObtainInMath.values();
    system.debug(uniqueRollNumberList);
   for(string eachMark : uniqueRollNumberSet1 ){
    if(marksObtainInMath.get(eachMark)<20){

system.debug(eachMark + ' is not qualified for the next class');

    }
    }


   }

//16ci sirada eachmark key valualri aldi get methiduyla valluealri aldiq

}

