import { LightningElement } from 'lwc';

export default class TwoWayDataBindings extends LightningElement {
    fullName='Hajiyeva';
    title='Salesforce Developer';
    changeHandler(event){
        this.title=event.target.value;
    }
   

}