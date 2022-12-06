public  class Addition {
    public integer a;
    public integer b;
    public  static integer total;
    
    public  Addition(integer x, integer y) {
   a = x;
    b = y;
    }
 public integer count(){
total = a+b;
return total;
 }

    public static void add(){
        system.debug(total);
    }
    
   /*public static string SampleStaticString;
    public string SampleString;
    public static void sampleStaticMethod(){
        system.debug('enjoy');
    }
    public void SampleMethod(){
        system.debug('gdshdjhd');
    }
   */
}

