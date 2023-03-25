

import { LightningElement } from 'lwc';
import EMP_OBJECT from '@salesforce/schema/Employee__c';

export default class ModalChild extends LightningElement {
    objectName = EMP_OBJECT;

    clickHandler() {
       // const closeEvent = new CustomEvent('close');
       // this.dispatchEvent(closeEvent);
       /* let message = 'User wants the child to be closed, hence closed';
       const closeEvent = new CustomEvent('close',{detail: message});
       this.dispatchEvent(closeEvent);*/

       let message = {
        Id: 1,
        Name: "hiji",
        Company:"Microsoft",
        Position:"CEO"
    }
    const closeEvent = new CustomEvent('close',{detail: message});
       this.dispatchEvent(closeEvent);
    }
}