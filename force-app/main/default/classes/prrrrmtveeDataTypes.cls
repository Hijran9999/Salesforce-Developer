public  class prrrrmtveeDataTypes {
    public void  prntBasicDataType(){
        string batchName = 'Falcons';
        integer totalCandidate = 60;
        boolean isAdminCompleted = true;
        string batchDescrptn = batchName + 'are the bestest..';
        system.debug(batchDescrptn);
        system.debug('total candidates:' + totalCandidate);
        Decimal decValue = 78.3;
        system.debug('decimal :' + decValue);
        Long longValue = 6647843734874L;
        System.debug('long: '+ longValue );
        object obj = 'This is a string';
        object obj2 = 39;
        system.debug('obj ' + obj2);
        


    }
}
