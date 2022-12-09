DmlDemo.dmlInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj();
DmlDemo.dmlUpdateDemo_1();
list<account> listAccount = [select id from account where createddate = THIS_WEEK];
delete listAccount;