list<account> acs = [select id, name from account order by  createddate desc limit 15];
AccountQuebleExample aqq = new AccountQuebleExample(acs);
id jobid = system.enqueueJob(aqq);