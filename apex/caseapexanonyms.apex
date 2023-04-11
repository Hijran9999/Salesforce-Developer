   list<case> listC = new list<case>();
  for(integer i=0;i<25;i++){


    case c = new case();
    c.Subject = 'There is a buggg';
    c.Description = 'Reslove it now';
    c.Origin = 'Web';
    c.Status = 'New';
    listC.add(c);
  }
  
    insert listC;

list<case> getallcs = [select id, status from case where status = 'New'];
for(case c : getallcs){

  c.Status = 'Working';
}


update getallcs;
delete getallcs;

  /*list<case> listc = new list<case>();
  for(integer i=0; i<205; i++){

case c = new case();
c.Subject = 'there is a bug';
c.Description = 'resolve it';
c.status= 'New';
c.Origin = 'Web';
listc.add(c);
        
    }
    insert listc;


    list<case> getAllCases = [select id, status from case where status = 'New'];
    for(case c : getAllCases){


        c.Status= 'Working';
    }
    update getAllCases;*/
    //example: we are inserting 50 cases
    ///we want to mark some cases maybe -duplicate using subject
    //set<string> all subjects
    //trigger.new loop we can compare
    //500 records 
    //