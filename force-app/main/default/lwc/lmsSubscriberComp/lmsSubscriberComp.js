
import { LightningElement, wire } from 'lwc';
import MY_CHANNEL  from '@salesforce/messageChannel/MyChannel__c';
import { APPLICATION_SCOPE, subscribe, MessageContext } from 'lightning/messageService';
export default class LmsSubscriberComp extends LightningElement {
    message;

    @wire(MessageContext)
    context;
    connectedCallback(){

        this.subscribeHandler();

        }
        subscribeHandler(){
         
            subscribe(
                this.context,
                MY_CHANNEL,
                (message) => {this.handleMessage(message)},
                {scope:APPLICATION_SCOPE}
            );
        }

        handleMessage(message){

            console.log("message reached subscriber comp");
            console.log(JSON.stringify(message));
            this.message = message.lmsData;
        }
    }
