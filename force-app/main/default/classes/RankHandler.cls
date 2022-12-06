public  class RankHandler {
    
    public string rankPrize(integer rank){
        string prize = '';
        if (rank == 1) {
            prize = 'Gold';
        } else if (rank == 2) {
            prize = 'Silver';
        } else if (rank == 3) {
            prize = 'Bronze';
        } else {
            if (rank <= 10) {
                prize = 'Top 10 certi';
            } else {
                prize = 'participation certificate. enjoy.';
            }
        }

        return prize;
    }
   
 
public string rankPriceSwitch1(integer rank){
    string price = '';
    switch on rank{
        when 1 {
            price = 'Gold';
        }
        when 2{
            price = 'Silver';

        }
        when 3{
            price = 'Bronze';
        }

    when 4{
        price = 'Welcome top 10';
    }
    when else{
        price = 'Thank u for participation..';
    }
    }
    return price;
}


}


