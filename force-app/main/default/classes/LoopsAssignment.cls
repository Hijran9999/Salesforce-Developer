public  class LoopsAssignment {
 public integer ForLoops(integer n) {
    integer factorialValue = 1;
    for(integer i = 1; i<=n;i++){
factorialValue = factorialValue*i;

    }
    system.debug(factorialValue);
    return factorialValue;
 } 
 public integer Dowhile(integer n1){
integer factorialValue = 1;
integer i = 1;
while(i<=n1){

factorialValue = factorialValue*i;
i++;
}
system.debug(factorialValue);
return factorialValue;

 }
 
 }
