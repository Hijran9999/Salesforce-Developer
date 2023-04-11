list<account> acc = [select id, name,(select id, lastname from contacts) from account];
ContactQueableapex cn = new ContactQueableapex(acc);
id  jobid = system.enqueueJob(cn);