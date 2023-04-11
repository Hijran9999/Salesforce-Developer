
 string cronex = '0 0 9 * * ?';
 ScheduleBatchContactUpdate g = new  ScheduleBatchContactUpdate();
 system.schedule('batchschedule again', cronex, g);