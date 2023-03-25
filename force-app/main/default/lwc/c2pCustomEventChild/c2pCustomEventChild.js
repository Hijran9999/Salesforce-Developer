import { LightningElement } from 'lwc';

export default class C2pCustomEventChild extends LightningElement {
    handleAdd(){
        const addEvent = new CustomEvent('addition');
        this.dispatchEvent(addEvent);
    }

    handleSubtract(){
        const subtractEvent = new CustomEvent('subtraction');
        this.dispatchEvent(subtractEvent);
    }
}