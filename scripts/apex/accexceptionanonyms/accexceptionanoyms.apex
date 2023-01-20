
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
//////////////////


account ac = new account();
ac.name = 'abc2';
ac.Industry = 'Energy';
 account ac1 = new account();
 ac1.name = 'xyz6';

 account ac2 = new account();

 list<account> listacc = new list<account>{ac,ac1,ac2};
 list<database.SaveResult> results = Database.insert(listacc, false);//false olanda do not insert bad ones ancaq dogrukari insert edir. eger true olsa 1 dene de bad guy olsa insert reallasmr false onemlidir
for(database.SaveResult r : results){
    if(r.isSuccess()){
    system.debug('record inserted . reord id ' + r.getId());
    }
    else{
        system.debug('errors ' + r.getErrors());
    }

}
