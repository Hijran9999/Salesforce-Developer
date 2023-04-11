map<string, EmailDomain__mdt> alldomains = EmailDomain__mdt.getall();
system.debug('all domains ' + alldomains);
//birinci erroru axtarir tapir sora gedir 19-cu setire
try{
string s;
s.toLowerCase();
account acc = new account();
insert acc;
system.debug('apex is simple..');
}
catch(Dmlexception dex){
    system.debug('dml ex wrong');


    system.debug(dex.getMessage());
}
catch(exception e){

    system.debug('something went wrong buddy');
    system.debug('ex message ' + e.getMessage());
    system.debug('ex line number ' + e.getLineNumber());
}
system.debug('apex is that  s');