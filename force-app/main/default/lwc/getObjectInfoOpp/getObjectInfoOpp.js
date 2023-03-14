import { LightningElement, wire } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import OPP_OBJECT from '@salesforce/schema/Opportunity';
export default class GetObjectInfoOpp extends LightningElement {

    customerSupportRtId;
    oppEnquriInfoRtId ;
    @wire(getObjectInfo,{objectApiName: OPP_OBJECT})    
    objectInfoHandler({data,error}){
        if(data){
            console.log(data);
            this.customerSupportRtId = data.defaultRecordTypeId;
            const rtids = data.recordTypeInfos;
            this.oppEnquriInfoRtId = Object.keys(rtids).find(rtid => rtids[rtid].name ==="Enquiry opp use case");
            
        }if(error){
            console.log(error);
        }





    }

}