trigger AccountAddressTrigger on Account (before insert, before update) {
    for (Account Acc : Trigger.new){
        if ((Acc.Match_Billing_Address__c == true) && (Acc.BillingPostalCode != NULL)){
            Acc.ShippingPostalCode = Acc.BillingPostalCode;
        }
    }

}