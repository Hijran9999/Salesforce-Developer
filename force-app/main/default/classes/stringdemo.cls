public  class stringdemo {
    public  void stringMethod1() {
        string sessionDescription = 'learning string methods in apex language';
        system.debug(sessionDescription);
        integer sessionStrLength = sessionDescription.length();
        system.debug('length of description' + sessionStrLength);
        string capsSessionDesc = sessionDescription.toUpperCase();
        system.debug('in capitals  -> ' + capsSessionDesc);
        Boolean containsApex = sessionDescription.contains('apex');
        system.debug('conatin apex??' + containsApex);
        string sf= 'salesforce';
        Boolean containsSF = sessionDescription.contains('salesforce');
        system.debug('contain salesforce' + containsSF);
        Boolean containsApex3 = sessionDescription.containsIgnoreCase('Apex');
        system.debug('contains ignore case Apex??' + containsApex3);
       


    }
}
