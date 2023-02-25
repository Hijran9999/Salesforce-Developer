import { LightningElement } from 'lwc';

export default class ConditionalRenderingTurkishshortvideo extends LightningElement {

    showContent = true;
    handleClick(){
        this.showContent = !this.showContent;
    }
}