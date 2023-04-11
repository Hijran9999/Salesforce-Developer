CaseQueuebleApex n = new CaseQueuebleApex();
id jobid  = system.enqueueJob(n);
system.debug(jobid);