public class Carsillll {
   public string  carColor = '';
    public string carName;
    private integer maxSpeed = 150;
    public void switchOn() {
        datetime switchOnTime = datetime.now();
system.debug('staringgg carrr');
    }
    public void drive(){
        system.debug(carName + ' color is ' + carColor);
    }
    public void driveAtMaxSpeed(){
string drivingDescription = 'Driving '+ carName + ' at ' + maxSpeed + ' km/h';
system.debug(drivingDescription);
 }
public string rankPrize(integer rank){
    string prize = '';
if (rank==1) {
    prize = 'Gold';
    
}
else if(rank==2){
    prize = 'Silver';

}else if(rank == 3){
    prize = 'Bronze';
}else{
    if(rank<=10){
        prize = 'Top 10 certification';
    }else{
        prize = ' participation certificate';
        }
    }
    return prize;
}

}



   



