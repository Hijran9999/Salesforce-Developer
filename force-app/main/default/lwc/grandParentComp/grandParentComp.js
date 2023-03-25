import { LightningElement } from 'lwc';

export default class GrandParentComp extends LightningElement {
    showHandler(event){
        console.log('show event has reached the grand parent');
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);
    }
}