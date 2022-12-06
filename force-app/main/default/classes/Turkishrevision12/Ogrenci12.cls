public class Ogrenci12 {

   public static integer ogrenciSayisi = 0;
    public string firstName;
    public string lastName;
    private string schoolName = 'Dream School';
    public string className;
    public Boolean art;
    public Boolean sport;
    public integer ingGrade;
    public integer mathGrade;
    public integer fenGrade;

    public Ogrenci12() {
        System.debug('Yeni bir kayit oldu. Hayirli olsun..');
        ogrenciSayisi++;
    }
/*public ogrenci12(string fName,string lName, string cName,Boolean ar){
this();//burda parametresizi calistirmak icin this(); parametrelinin icine diz yaz

    this.firstName = fName;
    this.lastName = lName;
    this.className = cName;
    this.art = ar;
}


    public void message(){
        System.debug(firstName + ' adinda bir ogrenci okulumuzun besinci ogrencisi olarak kaydoldu' + ogrenciSayisi + ' classi da bu ' + className);
    }*/
    public Ogrenci12(string fName,string lName,string cName,boolean ar){
        this();
    this.firstName = fName;
    this.lastName = lName;
    this.className = cName;
    this.art = ar;
 

        }
        public void message(){
            system.debug(firstName + ' okulumuzun '  + ogrenciSayisi + ' kaydoldu.');
        }


    }

