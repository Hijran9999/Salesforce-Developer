public class GeneralClass {
    public  void createStudents() {
        Student2 s1 = new Student2();
        s1.name = ' FRH';
        s1.birthdate = date.newInstance(1970, 11, 3);
        s1.schoolName = ' New Delhi Pub Sch';
        system.debug(s1);
        
        Student2 s2 = new Student2();
        s2.name = ' MSD';
        s2.birthdate = date.newInstance(1973, 11, 3);
        s2.schoolName = ' New Pub Sch';
        system.debug(s2);

    }

    public void justPrintAnything(){
integer i = 5 + 6+ 8;
system.debug(i);


    }
}
