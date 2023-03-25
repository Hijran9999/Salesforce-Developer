import { LightningElement } from 'lwc';

export default class P2cActionAtParent extends LightningElement {
    value;
    size;
     get sizeOptions(){

        return [
            {label:"Small", value:"small"},
            {label:"Medium", value:"medium"},
            {label:"Large", value:"large"},

        ];
     }
     changeHandler(event){
        if(event.target.name==="value"){
            this.value = event.target.value;
        }else{
            this.size = event.target.value;
     }
     }
}