import { LightningElement } from 'lwc';

export default class GettersLwcshortturkishvideo extends LightningElement {

fruits = ["elma","Armut"];

number1 = 19;
number2 = 20;

get firstFruit(){
    return this.fruits[0];//listenin 0ci elemntine aid olan eleman alinir
}

get sumofNums(){

    return this.number1*this.number2;
}
}