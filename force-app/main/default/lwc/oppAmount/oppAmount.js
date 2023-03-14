import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPP_OBJECT from '@salesforce/schema/Opportunity';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import getStageAmount from '@salesforce/apex/Oppctrl.getStageAmount';

export default class OppAmount extends LightningElement {

    stageOptions = [];
    opps;
    error;

    @wire(getObjectInfo, {objectApiName: OPP_OBJECT})
    oppInfo;

    @wire(getPicklistValues, {fieldApiName: STAGE_FIELD, recordTypeId: '$oppInfo.data.defaultRecordTypeId'})
    picklistHandler({data, error}) {
        if (data) {
            this.stageOptions = data.values;
        }
        if (error) {
            console.error(error);
        }
    }

    changeHandler(event) {
        const selectedStage = event.target.value;
        getStageAmount({stage: selectedStage})
            .then(result => {
                if(result>0){
                    this.opps = result;
                    this.error = undefined;
                } else {
                    this.error = 'There are no matching opportunities for the selected stage. Please select another'
                    this.opps = undefined;
                }                
            })
            .catch(error => {
                console.error(error);
                this.opps = undefined;
            })
        

    }
}