
try{
    string s;
    s.toLowerCase();
account ac = new account();
insert ac;
}catch(DmlException dx){
    
    system.debug('dml went wrong');
}
catch(Exception ex){
    system.debug('exception message ' +ex.getMessage() );
    system.debug('exception line number  ' +ex.getLineNumber() );


system.debug('something went wrong buddy.');

}

system.debug('apex is simple..');
