public with sharing class AirlineHandler {
    public static void  afterInsert(map<id, Airline2__c> newAirlines) {//u are creating new fresh method

for(id airlineId : newAirlines.keyset()){

    Airlinecalllouts2fevral.postAirline(airlineId);
}

//id gerekli map goturruk ona gore de triggeri newmap olur.
    }
}
