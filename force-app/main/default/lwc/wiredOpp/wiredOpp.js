import TopTenOpp from '@salesforce/apex/OpportunityController.TopTenOpp';
import { LightningElement, wire } from 'lwc';

export default class WiredOpp extends LightningElement {
stageName = "Closed Won";

    @wire(TopTenOpp,{ stage:'$stageName'})
    opps;
}