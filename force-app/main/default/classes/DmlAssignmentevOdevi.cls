
public  class DmlAssignmentevOdevi {
    public static void asg1(){
        list<account> acclst = new list<account>();
        for (integer i = 0; i<3; i++ ) {
            Account acc = new Account();
            acc.Name = 'Ayse + Assignment';
            acclst.add(acc);
            
        } 
        if(!acclst.isEmpty()){
            insert acclst;
        }
        System.debug(acclst);
    }
    public static void update_aaa (){
        account ac = new Account();
        ac.Name ='Account Created';
        insert ac;
        system.debug(ac);
        ac.Name = 'Account Updated';
        update ac;
        system.debug(ac);

    }
}
