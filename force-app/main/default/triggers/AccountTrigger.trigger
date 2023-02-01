trigger AccountTrigger on Account (before insert, after insert , before update, after update) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            BillingandShippingClass.copyBillingToShipping(Trigger.new);
        }
    }
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            BillingandShippingClass.copyBillingToShipping(Trigger.new);
    

}
    }
}