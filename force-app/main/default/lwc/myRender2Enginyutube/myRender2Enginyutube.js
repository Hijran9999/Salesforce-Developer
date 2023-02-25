import { LightningElement } from 'lwc';

export default class MyRender2Enginyutube extends LightningElement {
    display = true;
    Name;
    lastName;
    grade;
    rollNumber;

firstNameHandler(event){

    this.Name = event.target.value;

}

lastNameHandler(event){
    this.lastName = event.target.value;
}

gradeHandler(event){

    this.grade = event.target.value;
}

rollNumberhandler(event){
    this.rollNumber = event.target.value;
}
saveButtonHandler(event){

    this.display = false;
}
}


//softinnhelloworldee