public with sharing class CaseInvocable {
    @invocablemethod(label='send email and save activity'
    description='This method sends an email and saves the same as activity'
    category= 'Case')//flowdan cagrdq deye invocable cagrdq yaptik
 

public static void sendemailSaveActivity(list<inputRequest> inputs){//list of which carry two fileds accepting only one input parameter
    list<messaging.SingleEmailMessage> msgs = new list< messaging.SingleEmailMessage>();
for(inputRequest inp : inputs){//iterate loop and create an email message for each
Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
msg.setSubject('Case created: ' + inp.casenumber);//to set the subject casenumber mentioned in this way
msg.setPlainTextBody('A case has been created for ur queri. please quote the case number available in the subject when you talk to customer care!');
msg.setTargetObjectId(inp.contactId);
msg.setSaveAsActivity(true);//copy of the current  email will be stored given under the contact
msgs.add(msg);//case create olanda email getsin dedik
}


if(!msgs.isEmpty()){
    messaging.sendEmail(msgs);
}
    }
public class inputRequest{
    @invocablevariable(label ='Contact id ' description = 'Contact id' required = true)//you are all set inputrequest variablleyele

        public id contactId;
    @invocablevariable(label ='Case Number ' description = 'Case Number' required = true)

        public string casenumber;
    
}
}
//permamnently s object
//temperarly one are to another
//call it wrapper class