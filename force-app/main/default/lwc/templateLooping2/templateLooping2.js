import { LightningElement } from 'lwc';

export default class TemplateLooping2 extends LightningElement {
    accounts = [
    {
        name:"Soft Innovas",
        Type:"Existing Customer",
        Industry:"Education"
    },
    {
        name:"SF Academy",
        Type:"New Customer",
        Industry:"Education"

    },
    {
        name:"Universal Container",
        Type:"Existing Customer",
        Industry:"Information Technology"

    }
 ];
 
}