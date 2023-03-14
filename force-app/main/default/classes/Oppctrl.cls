public with sharing class Oppctrl {

    @AuraEnabled
    public static Decimal getStageAmount(String stage){
 
     List<Opportunity> oppList=[SELECT Name, Amount, StageName 
                                FROM Opportunity
                                WHERE Amount != null AND StageName = :stage];
 
     Decimal totalAmount = 0;
     for (Opportunity eachOpp :oppList) {
        totalAmount =  totalAmount + eachOpp.Amount; // totalAmount =+ eachOpp.Amount;
     }
     return totalAmount ;
    }
}