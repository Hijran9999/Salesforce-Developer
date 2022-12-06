public class Greetings {
    public string language = '';
    public string GreetingHello(){
string great = '';
if(language == 'Hindi'){
    great = 'Namaste';
}else if(language == 'Turkish'){
    great = 'Merhaba';
}else if(language == 'Russian'){
    great = 'Privet';
}


else{
    great = 'Heloo';
}
return great;
    }
    public string GreetingHello(integer n){
        string great = '';
        if(language == 'Hindi'){
            great = 'Namaste';
        }else if(language == 'Turkish'){
            great = 'Merhaba';
        }else if(language == 'Russian'){
            great = 'Privet';
        }
        
        
        else{
            great = 'Heloo';
        }
     } 
        
     } public string GreetingHello2(integer n){
        string great = '';
        switch on language{
            when 'Hindi'{
                great = 'Namaste Namste';
            }
            when 'Turkish'{
                great = 'Merhaba Merhaba';
            }when 'Russian'{
                great = 'Privet Privet';
            }
            when else{
                great = 'Hello,Hello';
            }
         return great;
    }

    }

