public class Cat {
   /* public string name;
    public string color;
    public static integer countcat = 0;
    public Cat() {
system.debug('cat constructor called');
countCat++;
    }
    public Cat(string n, string clr){
        name = n;
        color = clr;
        CountCat++;
    }

}*/
//constructor return instance
//automation ucun etdik static integer = 0 sonra count ++ etdik cunki
//automatic hesaplayir classin icind
public string name ;
public string color;
public static integer countCat = 0;
public Cat(){
system.debug('constructor called');
countCat++;
}


public Cat(string n,string clr){
    name = n;
    color = clr;
    countCat++;
    sleeping();
}
public void sleeping(){
    system.debug(name + ' is sleeping');
}
}