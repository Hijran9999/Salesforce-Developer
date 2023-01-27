public class CaseInvocableclshomeasgnmnt {


    @invocablemethod(label= 'send email and activity'
    description ='send email'
    category= 'Case' )
    public static void sendemail(list<methodcase> inputs){

        methodcase1 request = inputs[0];
        list<messaging.SingleEmailMessage> msgs = new list<messaging.SingleEmailMessage>();
        messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        msg.setSubject('Case Created ' + request.caseNumber);
        msg.setPlainTextBody('Hello there  \n case created');
        msg.setTargetObjectId(request.contactId);
        msg.setSaveAsActivity(true);
        msgs.add(msg);
        messaging.sendEmail(msgs);


    }

   public class methodcase1{

@invocableVariable(label='Case Number' description ='Case number' required = true)

public string caseNumber ;
@invocableVariable(label= 'Contact Id' description = 'Contact Id' required =true)
public id contactId;
   }
}
//1ci methodcase olustur ne lazmdsa case number ve contactId ver, sonra variable olaraq cunki iki uc dene versen,
//labeli ve descriptionu hemise orda olsun.
//2ciaddim invocablemethod olustur ve label des ve category yaz labelin verib flowda actiondan case categorsinden tapacagsan axction gondermek ucunmeselen email.
//3cunaddim method olustur. gonderme sekli <messaging.singleemailmessagedir> list seklinde de olur sonra litesin duzledib add et.
// new instance olustur. setsubject,setplaintextbody,settartget,setsave hamsi gonderilir. setsave true yada false . bodiye mesaj yaz ne 
//olunur meselen vase created zad. sonra settarget ise neyle baglanir contactami yoxsa accountlami bagla meselen. request. contact id 
//targtede yaz. setsubjectise ne edirsen meselen case yaradram sonra ise target etdyn objenin adin ise targetde qeyd et meslen contact.