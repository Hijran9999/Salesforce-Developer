list<contact> conlist = new list<contact>();
contact cn1 = new contact();
cn1.FirstName = 'John';
cn1.LastName = 'Doe';
conlist.add(cn1);
contact cn2 = new contact();
cn2.FirstName = 'Johnny';
cn2.LastName = 'Meryyy';
conlist.add(cn2);

insert conlist;
for(contact cn : conlist){


    cn.FirstName +=' Update3';
    cn.LastName+=' updateoldani3';
}
update conlist;