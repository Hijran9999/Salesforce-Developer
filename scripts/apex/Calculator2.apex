Calculator2 g = new Calculator2();
g.welcomeMessgae();
string message =  'print';
system.debug(message);
g.printNewMessage('printtttt');
g.printNewMessage('comeee');
string d = g.printAndReturnMsg(' Printtt asappp!!!');
system.debug(d);
integer sum1 = g.add(1,19);
system.debug(sum1);
integer hs = g.add(1,0,2);
system.debug(hs);
date newdate = date.newInstance(2016, 4, 4);
boolean lpCheck = g.checkLeapYear(newDate);
system.debug(newDate + ' n' + lpCheck);



integer age = cevab.age(date.newInstance(1992, 02, 12));
system.debug(age);