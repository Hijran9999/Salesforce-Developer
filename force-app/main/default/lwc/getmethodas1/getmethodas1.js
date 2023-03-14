import { LightningElement } from 'lwc';

export default class Getmethodas1 extends LightningElement {
   
num1=0;
num2=0;
result;


    changeHandler(event) {

     if(event.target.ids=="01a"){

        this.num1=event.target.value;
     }else{


        this.num2=event.target.value;
     }
    

       this.result=Number(this.num1) + Number(this.num2);
    }
    
}