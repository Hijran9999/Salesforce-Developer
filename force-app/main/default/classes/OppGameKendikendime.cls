public class OppGameKendikendime {
    public  static void getopp() {
List<Opportunity> listop = [select id, name, AccountId, amount, stagename from Opportunity where AccountId=null];

decimal amounttoplami = 0;
decimal ClosedWonAmountToplam= 0;
decimal maxAmount = 0;
string maxAmountName= '';
for(Opportunity opp : listop){
amounttoplami+=opp.Amount;
    if(opp.StageName=='Closed Won'){

        ClosedWonAmountToplam+=opp.Amount;//closed won olanlarin amount toplandi sadece 
    }

    if(opp.Amount>maxAmount){
        maxAmount= opp.Amount;
        maxAmountName= opp.name;
    }
}
system.debug('Account olmayan opp saysisi esittir ' +listop.size() + ' Amountlarinin toplami esittir ' + amounttoplami +' Closed Won olanlarin amount toplami ' + ClosedWonAmountToplam + ' maximum amount ' + maxAmount + ' Max amountun ismi ' + maxAmountName);

    }
    
}
//Cunki asignmentde accountu olmayan opplerin bilgilerini soqlla aldik boylece  