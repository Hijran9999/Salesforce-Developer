public  class Greetings2 {
    public string language ='';
public string GreetingHelloo(){

    String greet = '';
    if(language=='Hindi'){
greet = ' namaste';
  }else if(language == 'Turkish'){
   greet = 'Merhaba';
  }else if(language == ' Russian'){
    greet = 'Private';
  } else{
    greet = 'heloooo';
  
  }
  return greet; 

    }
}