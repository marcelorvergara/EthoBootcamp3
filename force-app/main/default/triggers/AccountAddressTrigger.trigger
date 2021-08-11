trigger AccountAddressTrigger on Account (before insert, before update) {

    for(Account a : Trigger.New){
        if(a.Match_Billing_Address__c){
            a.ShippingStreet        = a.BillingStreet;
            a.ShippingCity          = a.BillingCity;
            a.ShippingState         = a.BillingState;
            a.ShippingPostalCode    = a.BillingPostalCode;
            a.ShippingCountry       = a.BillingCountry;
            
        }
    }
}