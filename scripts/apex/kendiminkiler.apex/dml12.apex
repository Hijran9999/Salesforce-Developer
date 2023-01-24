Dml12class.createAcconuntAndcnt();
Dml12class.createAccountsAndContacts(6);


list<account> lisac= [select id , name from account limit 3];

ShowTotalAmount.showamount(lisac);