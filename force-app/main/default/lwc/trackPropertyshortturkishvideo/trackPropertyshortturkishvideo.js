import { LightningElement, track, } from 'lwc';

export default class TrackPropertyshortturkishvideo extends LightningElement {

   @track location = {//icine key ve valualeri qoyaq
    city:'Baku',
    country:"Azerbaijan",
    postalCode:'8493'

        }

    changehandler(event){
    this.location.city = event.target.value;


    }
}