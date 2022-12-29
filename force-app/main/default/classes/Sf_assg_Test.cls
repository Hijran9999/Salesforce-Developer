@istest
public class Sf_assg_Test {
    @istest
    private static void insertSfTest(){
Sf_assg.insertsf();
List<Salesforce_Project__c> listem = [select id, Project_Name__c from Salesforce_Project__c where Project_Name__c ='Phone23' ];

system.assertEquals(10, listem.size());
    }
    @istest
private static void updateSfTest(){
Salesforce_Project__c h = new Salesforce_Project__c();
h.Project_Name__c = 'My Phone 12';
insert h;
Sf_assg.updatesf();
Salesforce_Project__c hm = [select project_name__c from Salesforce_Project__c where Project_Name__c= 'Phone2'];
system.assertEquals('Phone2', hm.Project_Name__c);
//List<Salesforce_Project__c> llist=[select id, project_name__c from Salesforce_Project__c where Project_Name__c='Phone2' limit 1];
//system.assertEquals('Phone12', llist[0].Project_Name__c);
}
}