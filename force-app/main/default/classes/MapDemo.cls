public  class MapDemo {
    public static string  retrieteveMonth(integer m) {
string month = '';
map<integer,string> monthMap = new map<integer,string>();
monthMap.put(1,'January');
monthMap.put(2,'February');
monthMap.put(3,'March');
monthMap.put(4,'April');
monthMap.put(5,'May');
monthMap.put(6,'June');
monthMap.put(7,'July');
monthMap.put(8,'August');
monthMap.put(9,'September');
monthMap.put(10,'October');
monthMap.put(11,'November');
monthMap.put(12,'December');
month = monthMap.get(m);

Boolean keyExists = monthMap.containsKey(m);
if(keyExists){
    month = monthMap.get(m);

}else{
month = ' no such type here  .';
    
}

return month;
    }
}