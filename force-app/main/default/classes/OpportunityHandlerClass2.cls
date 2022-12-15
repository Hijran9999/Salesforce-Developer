public  class OpportunityHandlerClass2 {
    public static void opportunityStagenameUpdate(List<Opportunity> triggernew, map<id, Opportunity> triggeroldmap) {
for(Opportunity eacop : triggerNew){

    if(eacop.StageName !=triggeroldmap.get(eacop.id).StageName){


        system.debug('des field is ' + eacop.Description + 'name is ' + eacop.Name);
    }
}




    }
}
