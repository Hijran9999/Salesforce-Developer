

/*System.debug('String basda');
if(true){
    System.debug('I love Apex');
}


Integer x = 20;
System.debug(x);
if( 2>1){
    x = 100;
    system.debug(x);
}
x = 200;
system.debug(x);*/
/*Integer x = 20;
if(2<1){
    x+=10;

}
else{
    x+=20;
}

system.debug(x);*/
//if- in icindeki sart dogruysa ifin icine girsin, yanlissa else gitsin 20 artsin bilim sehvdi



/*Integer score = 91;
if(score>90){
    system.debug('A+');
}
else if(score>70){
    system.debug('You are B');

}
else if(score>60){
    system.debug('You got B');
}
else{
    system.debug('You failed, try to do more');
}
*/
/*Integer num1 = 13;
if(Math.mod(num1,2)==0){
    system.debug('Even number');
}
else{
    system.debug('Odd number');
}*/
/*String password = 'abc12';
system.debug(password == 'abc123' ? 'Correct': 'Incorrect');
Integer x=0;
x=(x==null ? 12 : x);
system.debug(x);*/
Integer i;
for (Integer i = 1; i<=100;i+=10){
    if(i==50){
system.debug('I am not learning Apex' + i);
}
else{
system.debug('Out of: '+ i);
}
}
    
    for( Integer i=1;i<=10;i++){
        for(Integer j=1;j<=10;j++){
            system.debug(i + ' x' + j + '=' + i*j);
        }
    }
    //burda 20 ve 24 e catanda burax davam et dedim

    for(Integer i=1;i<=50;i++){
        if(i==20 || i==24){
            continue;
        }
        system.debug(i);
    }
    //burda 50 araliginda 5e bolunenleri alma ve 10 a bolunenleri burax dedim continue olanda
for(Integer i=1;i<=50;i++){
    if(Math.mod(i,5)==0 ||  Math.mod(i,10)==0){
        continue;
    }
    system.debug(i);
}
//100e qeder loop et sora 60a catanda stop break et. continue ise meselen beraber etdymz eded var onu atla sora davam et deyr.
for(Integer i=1; i<=100;i++){
    system.debug(i);
    if(i==60){
        break;
    }
}