import { LightningElement } from 'lwc';

export default class ConditionalRenderingTwo extends LightningElement {
    showContent = true;
    clickHandler(){
        this.showContent = !this.showContent;
    }
}