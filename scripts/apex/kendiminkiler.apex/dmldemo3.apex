DmlDemo3.dmlInsertDemo_stnObj();
DmlDemo3.dmlInsertDemo_cstmObj();
DmlDemo3.dmlUpdateDemo_1();
DmlDemo3.dmlUpdateDemo_3();
DmlDemo3.dmlInsertDemo_4();
DmlDemo3.dmlUpdateDemo_2_CO();
DmlDemo3.dmlMultipleRecordInsert_right();
DmlDemo3.dmlInst2();
DmlDemo3.dmlins2();
DmlDemo3.createMultipleAccounts(2);
account acc = [select id from account where name = 'Default' limit 1];
list<contact> listcnt = [select id, accountid, name from contact where accountid != null ];
for(contact c : listcnt){
    c.AccountId = acc.id;
listcnt.add(c);
system.debug(c.id);


}if(!listcnt.isEmpty()){

update listcnt;



}
