account ac1 = new account();
ac1.name = 'abc';
ac1.Industry = 'Energy';

account ac2 = new account();
ac2.name = 'xyz';

account ac3 = new account();
account ac4 = new account();
 list<account> listacc = new list<account>{ac1,ac2, ac3,ac4};
 list<database.SaveResult> results = Database.insert(listacc,false);
 for( database.SaveResult r : results){
    if(r.isSuccess()){

        system.debug('record insertedd ' + r.getId());
    }else{

        system.debug('error out ' + r.getErrors());
    }
 }