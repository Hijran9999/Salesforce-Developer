Calculator j = new Calculator();
j.welcomeMessage();
string m = 'message is';
j.printNewMessage(m);


string y = j.printAndReturnMsg('print noww');
system.debug(y);
integer sum1 = j.add(10,16);
system.debug(sum1);

integer sum3 = j.add(7,8,9);
system.debug(sum3);
date newDate = date.newInstance(2016,4,8);
boolean lpCheck = j.checkLeapYear(newDate);
system.debug(newDate + ' check leap year ' + lpCheck);
