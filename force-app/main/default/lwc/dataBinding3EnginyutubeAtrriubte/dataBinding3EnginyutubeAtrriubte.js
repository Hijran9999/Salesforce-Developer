import { LightningElement } from 'lwc';

export default class DataBinding3EnginyutubeAtrriubte extends LightningElement {
    name;
    nameHandler(event){
        this.name = event.target.value;
 }

}
//javada inputlar kullanlir htmlda hazirla orda kullan
//thisle name fix kullanima haizr daxidle onchange ile  deyisken orunmesi ucun de p tginda verdik 