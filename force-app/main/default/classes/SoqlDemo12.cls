public class SoqlDemo12 {
    public  static integer accountIndustryOfEducation(string indstry) {

list<account> accList = [select id, name, industry from account where industry = :indstry ];
system.debug('ac listesi esittir ' + accList);
integer recordSAayisi = accList.size();
return recordSAayisi;
    }
    public static void dmlInsertDemo_4() {
        account acc = [select id, name from account where name = 'SoftInnovas Inc.' limit 1];

        //creaet contact
        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.id;
        insert cnt;
        system.debug('contact record: ' + cnt);
    }

    //accountlardan industry olanlar listelyin enery olanlari contactlari ile beraber liestelyn ve herbiri recordu tek tek yazin
   /* public static void AccontWithContacts(string indstry) {
        //Accountlardan industry Energy olanlari contactlari ile beraber listeleyin ve her bir recordu tek tek yazin..
        List<Account> accList = [select id, name, (select id, lastName from Contacts) from account where Industry =: indstry];
        System.debug('Account listemiz.. ' + accList);
        for (account acc : accList) {
            System.debug(acc);//forun icine al ayri yazdr listeyi
            System.debug(acc.contacts);
            for (contact con : acc.contacts) {//tekrar foreach yap litenin icine gir
                System.debug(con);
            }
        }
    }

    public static void oppDetails(){

list<Opportunity> lstopps = [select id, name, stagename, account.name,(select id, name,product2.name,  quantity, totalprice, unitprice from opportunity 
LineItems) from Opprortunity];
for(Opportunity eachOpp : lstopps ){

    system.debug(eachOpp.Name);
    List<OpportunityLineItem> eachopline = eachOpp.OpportunityLineItem;

for(OpportunityLineItem pl : eachopline){
system.debug('product name is ' + pl.product2.name);



}
}


    }*/
}