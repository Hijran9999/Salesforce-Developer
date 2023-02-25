import { LightningElement } from 'lwc';

export default class LocolProperties extends LightningElement {

    name;//undefined
    age= 30;
    fullname= "Salesforce  developer Hijran";
    location= {

        city:"Toronto",
        country: "United States",
        postalCode:"50003"
    };

    fruits = ["Orange","Strawberry","Apricot"];
}