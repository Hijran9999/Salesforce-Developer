


ParametreliMethodlar12 pm1 = new ParametreliMethodlar12();
string cumle = 'Salesforce Developer olma yolunda emin adimlarla yuruyorsunuz..';
integer sonuc = pm1.karakterUzunlugu(cumle);
System.debug(cumle + ' cumlesinin karakter sayisi = ' + sonuc);

ParametreliMethodlar12 pm2 = new ParametreliMethodlar12();
integer rakamSys = pm2.rakamSayisi(4444);
System.debug('toplam rakam sayisi = ' + rakamSys);
System.debug(pm2.rakamSayisi(222222));

integer sayi1 = 15;
System.debug(sayi1);
string strngSayi1 = string.valueOf(sayi1);
strngSayi1.length();
System.debug(strngSayi1);

ParametreliMethodlar12 pm3 = new ParametreliMethodlar12();
integer tplm = pm3.toplama(11, 22);
System.debug('sayilarin toplami = ' + tplm);
integer ckrm = pm3.cikarma(55, 44);
System.debug('sayilarin farki = ' + ckrm);

//sayilarin toplamini sayilarin farkina bolumunu bulun?
decimal blm = tplm/ckrm;
System.debug('2 sayinin toplaminin farkli 2 sayinin farkina bolumu = ' + blm);


ParametreliMethodlar12 pm4 = new ParametreliMethodlar12();
pm4.parametreler('Harry potter' , 25,5);

