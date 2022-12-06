public  class MathPractise {
    public decimal practiceOne(decimal a, decimal b){

decimal h = 2*(a + b);
return h;

    }
    public decimal practiceTwo(decimal m,decimal kg){
        decimal boy =  m; 
        decimal kilo =  kg;
        decimal result =kg/(m*m);
        return result;

    }
    //parametre alan dynamic olur..dynamic class orneyi..
    //ststic olsa parametre koyamayiz..
    public decimal practiseFour(decimal a){
if(a<=0){
    system.debug('Hatali bir deger girdiniz');
}else if(a<50){
    system.debug('Bonus kazanamadiniz');

}else if(a>=50 && a<200){
    system.debug( a + '$ tutarındaki alışveriş karşılığı 10 $ tutarında bonus kazandınız.' );
}else if(a>=200 && a<500){
    system.debug(a + '$ tutarındaki alışveriş karşılığı 30 $ tutarında bonus kazandınız. ');
}else if(a>=500){
    system.debug(a + '$ tutarındaki alışveriş karşılığı 50 $ tutarında bonus kazandınız.');
}
return a;

    }

    public void printString(string a, integer n){

      for (Integer i = 1; i < n; i++) {
        system.debug( a + ' is my hometown' + ' ' + i);
        
      }  
    }

    public decimal practiseSix(decimal a, decimal b, string typeOne){
        decimal hesap = 0;
    switch on  typeOne{
        when 'Alan' {
            hesap = Math.round(a*b);
            system.debug('Diktortgenin alani ' +  hesap); 
    return hesap;
         
            
        }
        when 'Cevre' {
            hesap = Math.round(2*(a+b));
            system.debug('Diktortgenin cevresi ' +  hesap);
            return hesap;
       

            
        }when else{
            system.debug('Hatali bir deger girdiniz');
        }
    }
    return hesap;
    
    }
    public string practiseSeven(decimal a, decimal b){
        string hesap = ' Vucut kitle indeksiniz esittir ';
        decimal vki = a/(b*b);
if(vKi<=0 || vKi>=30){
system.debug('Hatali giris');
}else if (vki>0 && vki<=18.4){
    system.debug(vki.setScale(1) + '->' + 'Zayif');
}else if(vki>=18.5 && vki<=24.9){
    system.debug(vki.setScale(1) + '->' +  'Normal');
}else if( vki>=25 && vki<=29.9){
    system.debug(vki.setScale(1) + '->' + 'Kilolu');
}
return hesap;
}
public decimal myMethod2(decimal a, decimal b){

decimal cevreUzunlugu = 2*(a+b);


return cevreUzunlugu;
}


public decimal benimMethod(string a, decimal b){
    decimal result;

if(a== 'kare'){
    decimal kareninAlani = b*b;
    system.debug('karenin alani ' + kareninAlani);

    result =  kareninAlani;
}else if(a == 'daire'){

    decimal daireAlani = 3.14*(b*b);
    system.debug('dairenin alani ' + daireAlani);

    result =  daireAlani;
}
return result;

}

   }



    