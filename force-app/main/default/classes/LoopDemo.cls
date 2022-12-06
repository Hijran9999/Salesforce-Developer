public class LoopDemo {
   public void print_in_while(){
    integer count = 0;
    while(count <10){
        system.debug(count);
        count++;
    }
   }
   public void print_N_numbers(integer n){
    for (Integer i = 0; i < n; i++) {
        system.debug(i);
    }
   }
   public void print_N_Odd_numbers(integer startInt, integer endInt){
    if(startInt > endInt){
        system.debug('not allowed');
    }else{
    for(Integer  i = startInt; i<=  endInt;i++){
        integer remainder = math.mod(i,2);
        if(remainder== 1){
            system.debug(i);
        }
    }
   }
   }
}