IfEndclassi h = new IfEndclassi();
/*h.ifNumbers(6,5);
h.ifNumbers(3, 4);
h.ifNumbers(4, 4);*/
h.ifBread('simit', 10);
h.ifBread('kek', 3);
h.ifBread('cay', 3);
h.ifBreadSwitch('simit',9);
h.ifBreadSwitch('kek',2);
h.ifBreadSwitch('ekmek',9);
for (Integer i = 1; i < 10; i++) {
    system.debug(i);
}
IfEndclassi h1 = new IfEndclassi();
system.debug(h1.forLoopSumNumbers(50));

IfEndclassi h2 = new IfEndclassi();
system.debug(h2.whileLoopSumNumbers(10));



//IfAndForLoop12 ifl2 = new IfAndForLoop12();
//System.debug('toplam = ' + ifl2.forLoopSumNumbers(50));

//IfAndForLoop12 ifl3 = new IfAndForLoop12();
//System.debug('toplam = ' + ifl3.whileLoopSumNumbers(10));