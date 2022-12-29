@istest
public  class SpTriggerHandlerTestcls {
    
 /* private static void testSpUpdatefuture(){
Salesforce_Project__c sp1 = new Salesforce_Project__c();
sp1.Project_Name__c = 'Sp test 1';
sp1.Status__c = 'New';

Salesforce_Project__c sp2 = new Salesforce_Project__c();
sp2.Project_Name__c = 'Sp test 2';
sp2.Status__c = 'New';


List<Salesforce_Project__c> insp = new List<Salesforce_Project__c>{sp1,sp2};
insert insp;

set<id> setids = new set<id>{sp1.id,sp2.id};
test.startTest();
SalesforceProjectTriggerHandler.updateProjectDescription(setids);

test.stopTest();

List<Salesforce_Project__c> allsp = [select id, description__c from Salesforce_Project__c];
system.assert(allsp[0].Description__c.contains('future'));


  }*/
@istest
private static void testSpFuture1(){
Salesforce_Project__c sp1 = new Salesforce_Project__c();
sp1.Project_Name__c= 'Sp test 1';
sp1.Status__c ='New';
sp1.Description__c = 'tetss';

Salesforce_Project__c sp2 = new Salesforce_Project__c();
sp2.Project_Name__c= 'Sp test 2';
sp2.Status__c ='New';
sp1.Description__c = 'tetss';

list<Salesforce_Project__c> insp = new List<Salesforce_Project__c>{sp1,sp2};
insert insp;
Set<Id> setspids = new set<id>{sp1.id,sp2.id};
test.startTest();
SalesforceProjectTriggerHandler.updateProjectDescription(setspids);
test.stopTest();

List<Salesforce_Project__c> listsp =[select id, description__c from Salesforce_Project__c ];
system.assert(listsp[0].Description__c.contains('future'));


}

}
