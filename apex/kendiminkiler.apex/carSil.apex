Carsillll f = new Carsillll();
f.carName = 'Toyota';
f.carColor = 'Black';
f.switchOn();
system.debug('car color is ' + f.carColor);

Carsillll bmw = new Carsillll();
bmw.carName  = 'Bmw';
bmw.carColor = 'Orange';
bmw.switchOn();
system.debug( ' car color is ' + bmw.carColor);

system.debug('car name is ' + bmw.carName);

Carsillll h = new Carsillll();
h.drive();
 Carsillll g = new Carsillll();
 g.driveAtMaxSpeed();
 Carsillll h1 = new Carsillll();
 string h2 = h1.rankPrize(1);
 system.debug(' h2 is ' + h2);
  string h3 = h1.rankPrize(2);
 system.debug(' h3 is ' + h3);
  string h4 = h1.rankPrize(3);
 system.debug(' h4 is ' + h4);
 string p15 = h1.rankPrize(9);
 system.debug('p15 is ' + p15);

 list<Book__c> lb = new list<Book__c>();
       for(integer i=1;i<10; i++){
         
        Book__c b = new Book__c();
        b.Book_Name__c = 'Benjamin' +i;
        b.Price__c = 500;
        b.Sayfa_sayisi__c = 600;
        lb.add(b);
       }
       
       if(!lb.isEmpty()){
        insert lb;
       }
