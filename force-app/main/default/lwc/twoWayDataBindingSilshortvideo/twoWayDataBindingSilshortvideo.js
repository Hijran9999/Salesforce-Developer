import { LightningElement } from 'lwc';

export default class TwoWayDataBindingSilshortvideo extends LightningElement {

    fullname = "Hiji Hajiyeva";
    course = 'Salesforce Developer';
    changeHandler(event){
        this.course = event.target.value;//eventin valuesin al
    }
}