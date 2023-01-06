list<account> ac = [select id, name from account order by createddate desc limit 15];


AccountQuebleExample aq= new AccountQuebleExample(ac);
id jobid = system.enqueueJob(aq);