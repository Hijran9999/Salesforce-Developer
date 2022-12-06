public class ConditionClass_Assignment {
   
public string ifClassMethod(integer monthss){
    string month = '';
if(monthss == 1){
    month = 'January';
    
}else if(monthss == 2){
    month = ' February';
}else{
    month = 'Not a valid Month';

}
return month;
}
public string caseMethod(string monthQuarters ){
string quarter = '';
if(monthQuarters== 'January'|| monthQuarters == 'February'|| monthQuarters== 'March'){
    quarter = 'Quarter 1';
}else{
    quarter = 'Not a valid Quarter';
}
return quarter;
}


}