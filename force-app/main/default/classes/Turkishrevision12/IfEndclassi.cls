public  class IfEndclassi {
    public void ifNumbers(integer a, integer b) {
/*if (a>b) {
   system.debug(a +   ' sayi 1' + b + ' sayisindan buyukdur ' );
   if(a<b)
system.debug(b+ ' sayisi ' + b + ' sayisindan kucukdur');
if(a==b)
system.debug(a + ' sayisi ' + b + ' sayisina esittir');*/

if(a>b)
system.debug(a +   ' sayi 1' + b + ' sayisindan buyukdur ' );

else if(a<b)
system.debug(b+ ' sayisi ' + b + ' sayisindan kucukdur');

else if(a==b)
system.debug(a + ' sayisi ' + b + ' sayisina esittir');

}
public void ifBread( string order, integer nmber){

integer hesap = 0;

    if (order == 'bread') {
    hesap = nmber*1;
    } else if(order == 'simit'){
        hesap = nmber*2;

    }else if(order =='kek'){
        hesap = nmber*3;
    }else{
        system.debug('Not in stock');
    }
        if(hesap !=0){
            system.debug(nmber + ' adet ' + order + ' icin odeyecegnz miktar ' + hesap + ' $');
        } 
     } public void ifBreadSwitch(string order, integer nmber){
            integer hesap = 0;
            switch on order {
                when  'ekmek' {
                    hesap = nmber*1;
                }
                when 'simit' {
                    hesap = nmber*2;
                } when 'kek' {
                    hesap = nmber*3;
                }
                when else {
                    System.debug('uzgunuz girdiginiz siparis bizde mevcut degil');
                }
            }
    
            if (hesap != 0) {
                System.debug(nmber + ' adet ' + order + ' icin odeyeceginiz miktar = ' + hesap + '$');
            } 
        }
    

    public integer forLoopSumNumbers(integer n){
        integer sum = 0;
        for(integer i = 0; i<=n;i++){
            sum +=i;
        }
        return sum;
    }
    public integer whileLoopSumNumbers(integer n){
        integer sum = 0;
        integer count = 1;
        while(count <=n){
            sum+=count;
            system.debug('sum = ' + Sum);
            count++;
            system.debug('count = ' + count);
        }
        return sum;
    }
}