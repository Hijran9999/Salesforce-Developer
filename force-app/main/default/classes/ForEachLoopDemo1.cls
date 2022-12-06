public  class ForEachLoopDemo1 {
    list<integer> listInteger = new list<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(14);
    public static void iterateIntegerList() {


for( integer eachInteger : listInteger){
    system.debug(eachInteger);
}

    }
    public static integer add(list<integer> intList){
        integer returnInt = 0;
        for(integer eachInt : intList){
            system.debug(eachInt);
            system.debug(returnInt);
            returnInt+=eachInt;

        }
        return returnInt;
    }
}

