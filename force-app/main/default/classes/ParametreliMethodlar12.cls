public class ParametreliMethodlar12 {
    //Metodumuz string bir parametre alsin. Bu metot gelen parametrenin karakter uzunlugunu return etsin.
    public integer karakterUzunlugu(string text){
     integer krktrUzn = text.length();
     return krktrUzn;
    }
 
    //Metodumuz parametre olarak integer bir deger alsin. Bu integer sayi kac rakamdan olusuyor bunu return etsin.
    public integer rakamSayisi(integer sayi){
         string strSy = string.valueOf(sayi);
         //return strSy.length();
         integer rkmSys = strSy.length();
         return rkmSys;
    }
 
    // parametre olarak 2 integer deger alsin ve bunlarin toplamini return etsin..
    public integer toplama(Integer a, integer b){
         return a + b;
    }
 
    // parametre olarak 2 integer deger alsin ve bunlarin farkini return etsin..
    public integer cikarma(integer c, integer d){
         return c - d;
    }

    public void parametreler(string kitabAdi,decimal fiyat, integer adet){

decimal toplamUcret = fiyat*adet;
system.debug(kitabAdi + 'kitabindan ' + adet + ' adet aldiniz  odemnez gereken mktr  = ' + toplamUcret);

    
    }
 }