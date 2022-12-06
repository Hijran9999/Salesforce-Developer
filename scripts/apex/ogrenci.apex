Ogrenci12 s1 = new Ogrenci12();
s1.firstName = 'John';
s1.lastName = 'Doe';
s1.className = '7E';
s1.art = false;
s1.sport = true;
s1.ingGrade = 85;
s1.mathGrade = 95;
s1.fenGrade = 90;
System.debug(s1);
s1.message();

Ogrenci12 s2 = new Ogrenci12();
s2.firstName = 'Ayse';
s2.lastName = 'Yalcin';
s2.className = '8E';
s2.art = true;
s2.sport = false;
s2.ingGrade = 95;
s2.mathGrade = 95;
s2.fenGrade = 100;
System.debug(s2);
s2.message();
List<ogrenci12> ogrenciler = new List<ogrenci12>();
ogrenciler.add(s1);
ogrenciler.add(s2);
system.debug(ogrenciler);

/*system.debug('---parametreli constructor====');
Ogrenci12 s3 = new Ogrenci12('Hijran','Hajiyeva','11A',true);
s3.fenGrade = 85;

s3.mathGrade = 90;
system.debug(s3);
s3.message();
Ogrenci12 ss1 = new Ogrenci12('Esma','Toprak','10B',false);

Ogrenci12 ss2 = new Ogrenci12('Hijran','Toprak','11B',false);

Ogrenci12 ss3 = new Ogrenci12('Tolga','Toprak','9C',true);
system.debug(Ogrenci12.students);*/
system.debug('parametreli constructor.......');
Ogrenci12 s3 = new Ogrenci12('Marry','Doe','11A',true);
s3.fenGrade = 90;
system.debug(s3);
