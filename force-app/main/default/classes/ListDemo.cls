public  class ListDemo {
  public static string candidatesList(integer i){
  List<string> listCandidates= new List<string>();
listCandidates.add('Marc');//o
listCandidates.add('Elon');//1
listCandidates.add('Elon');//2
listCandidates.add('Marc1');//3
system.debug('list candidates are ' + listCandidates);
string returnString = '';
integer sizeOfList = listCandidates.size();
system.debug(sizeOfList);
if(i>=0 && i<sizeOfList){
    returnString = listCandidates[i];
}else{
   returnString = 'no...';
}
return returnString;

}

  
  public static void randomIntegerList(){

    List<Integer> listInteger = new List<Integer>();
    ListInteger.add(10);
    listInteger.add(16);
    ListInteger.add(4);
    ListInteger.add(7);
    system.debug(listInteger);
    integer valueAt3Index = listInteger.get(3);
    integer valueAt3index2= listInteger[3];

    system.debug(listInteger);
    system.debug(valueAt3Index);

  }

  public static void allCat(){
    list<cat> listCat = new list<cat>();
cat v = new cat ('simba', 'orange');
cat v1 = new cat ('simba', 'orange');
cat v2 = new cat ('jery', 'white');
listCat.add(v);
listCat.add(v1);
listCat.add(v2);
system.debug('list of cat ' + listCat);


  }



}



