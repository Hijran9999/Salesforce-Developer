import { LightningElement } from 'lwc';

export default class C2pCustomEventParent extends LightningElement {
    counter = 0;

    handleAddition(){
        this.counter++;
        //this.counter = this.counter + 2;
    }
    handleSubtraction(){
        this.counter--;
        //this.counter = this.counter - 2;
    }
}
