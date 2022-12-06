//instance of class = object
//classname, variable name, instance
car toyota = new car();
toyota.switchOn();
toyota.driveAtMaxSpeed();
toyota.carName = 'Toyoto sport';
toyota.carColor = 'Black';
string color = 'Black';
toyota.drive();
system.debug(' Toyota is   ' + color);
//class we deploy
//anonmys apex,we execute

Car bmw = new Car();

bmw.carName = 'BMW New Sport';
system.debug(bmw);
bmw.carColor = 'White ';
bmw.switchOn();
bmw.drive();
system.debug('Bmw  ...' + bmw);

Car nissan = new Car();

nissan.carName = 'Nissan Sunny';
nissan.switchOn();
nissan.carColor = 'Green';
nissan.drive();
system.debug(nissan);




