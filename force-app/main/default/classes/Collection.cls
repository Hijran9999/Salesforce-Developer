public  class Collection {
    public static string ListAssignment(integer i) {
List<string> listMonth = new list<string>();
listMonth.add('January');
listMonth.add('February');
listMonth.add('March');
listMonth.add('April');
listMonth.add('May');
listMonth.add('June');
listMonth.add('July');
listMonth.add('August');
listMonth.add('September');
listMonth.add('October');
listMonth.add('November');
listMonth.add('December');
string output_month= '';

if(i>listMonth.size()){
    system.debug('Not a valid month');
}else{

    output_month = listMonth[i -1];
    system.debug(output_month);
}

return output_month;

    }
    
}