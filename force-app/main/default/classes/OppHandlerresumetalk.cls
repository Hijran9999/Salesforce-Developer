public with sharing class OppHandlerresumetalk {
  /*  public static void createOpp(List<Opportunity> trnew){

        list<account> aclist = new list<account>();
        list<contact> conlist = new list<contact>();



        for(Opportunity opp : trnew){

account ac = new account();
ac.name = opp.name;

aclist.add(ac);

contact con  = new contact();
con.LastName = opp.name;

conlist.add(con);
        }
insert aclist;
insert conlist;
        
    }*/

    public static void crt(List<Opportunity> trnew){

        //annualrevenusu en yuksek olan accountu parent olarak atama
Account ac = [select id, name, annualrevenue from account where Annualrevenue!=null order by AnnualRevenue   DESC limit 1 ];

/*decimal maxnumber=0;
 id acids;
for(account ac : listac){

if(ac.AnnualRevenue> maxnumber){
    maxnumber = ac.AnnualRevenue;

    acids= ac.id;//en yukseyin idsini al id gerekli maxnumber neyse
}

}*/
for(Opportunity opp : trnew){


opp.AccountId = ac.id;

}

    }



public static void ph(List<Opportunity> trnew){






list<account> ac1 = new list<account>();
list<contact> con  =  new list<contact>();

for(Opportunity op : trnew){


    account ac = new account();

    ac.name = op.name;

    ac1.add(ac);



    contact c = new contact();
    c.LastName = op.name;

    con.add(c);
}

insert ac1;
insert con;

}



















}