public  class lListeString {
    public static  integer myMethod(list<string> intList2) {
integer rakam;

list<string> l = new list<string>();
list<string> t = new list<string>();
for( string eachStr : intList2){
integer b = eachStr.length();
if(b>5){
l.add(eachStr);

}else{

    t.add(eachStr);

}



}

integer highLength = 0;
for( string  eachSTr  : l){
integer bakk = eachSTr.length();
if(bakk>highLength){
    highLength = bakk;
}


}

system.debug('kucuk stringler = ' + t + ' , ' + ' buyuk stringler ' + l);
rakam = highLength;
return rakam;

    }

    
}
