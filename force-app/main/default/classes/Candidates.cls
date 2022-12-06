public  class Candidates {
   public  string name;
   public string gender;
   public static string companyName;
   public static integer countCandidates = 0;
   public void printCandidates(){
    system.debug('name of candidate is ' + name + ', gender is ' + gender);
    system.debug('company name is ' + companyName);
   }
   public static void printCandidatesInfo(){
    //we can access static members in ststatic method
    system.debug('c name in ststic method is ' + companyName);
    //we cannot access static members in static method..
    //system.debug('name is' + name);
   }

}
