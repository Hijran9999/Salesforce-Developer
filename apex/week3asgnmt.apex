Order_Event__e evt = new Order_Event__e();
evt.Has_Shipped__c = true;
evt.Order_Number__c = '1';
Eventbus.publish(evt);