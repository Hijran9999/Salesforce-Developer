//access custom setting here 
map<string, country_code__c> allcountrycode= country_code__c.getall();
system.debug('all country code are ' + allcountrycode);
for(string eachcountry : allcountrycode.keyset()){

    system.debug('country name is ' + eachcountry +' code is ' + allcountrycode.get(eachcountry).Code__c);
}