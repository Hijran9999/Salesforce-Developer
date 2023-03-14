public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getTopAccounts(){
return[select Name,Type,Industry, AnnualRevenue from  Account where AnnualRevenue!=null with SECURITY_ENFORCED order by AnnualRevenue DESC limit 10];
 }

 @AuraEnabled
 public static List<Account> getAccountsByIndustry (string industry){
    return [select Name, Type, Industry, AnnualRevenue from Account where Industry= :industry with SECURITY_ENFORCED ORDER BY AnnualRevenue  DESC limit 5];
}
 
}