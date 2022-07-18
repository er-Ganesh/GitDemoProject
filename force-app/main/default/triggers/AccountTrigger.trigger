trigger AccountTrigger on Account (before insert) {

    if(Trigger.isInsert && Trigger.isBefore)
    {
        System.debug('In Account Trigger');
        AccountHandlerEvaluation.shippingAddressUpdate(Trigger.new);
    }
    
}