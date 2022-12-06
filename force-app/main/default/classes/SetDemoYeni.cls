public  class SetDemoYeni {
    public static void tekCift(set<integer> numbers) {


        Set<Integer> tekSayilar = new Set<Integer>();
        Set<Integer> ciftSayilar = new Set<Integer>();
for(integer i : numbers){

if(math.mod(i, 2)==0){
system.debug(i + 'bu sayi cifttir..');
ciftSayilar.add(i);

}else{
    system.debug(i + 'sayi tekdir..');
    tekSayilar.add(i);
}


}
system.debug('tek sayilar listesi ==> ' + tekSayilar);
system.debug('cift sayilar listesi == > ' + ciftSayilar);


    }
}
