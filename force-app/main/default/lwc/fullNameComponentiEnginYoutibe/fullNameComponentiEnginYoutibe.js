import { LightningElement } from 'lwc';

export default class FullNameComponentiEnginYoutibe extends LightningElement {
    firstname ='';
    lastName ='';
    firstNameHandler(event){
        this.firstname = event.target.value;
    }

    lastNameHandler(event){
        this.lastName= event.target.value;
    }
    get fullName(){
        return '${this.firstname} ${this.lastName}';
    }
}
//birlesdirdik