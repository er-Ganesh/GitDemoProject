public class AccountHandlerEvaluation {
    
    /*Q1. Write a trigger on Account, when an account insert, automatically account billing  
*  address should populate into the account shipping address.
*/
    
    public static void shippingAddressUpdate(List<Account> accList)
    {
        System.debug('In shippingAddressUpdate');
       
        for(Account acc : accList)
        {
            if(acc.BillingStreet != null)
            {
                System.debug('Inside If');
                acc.ShippingStreet = acc.BillingStreet;
                acc.ShippingCity = acc.BillingCity;
                acc.ShippingState = acc.BillingState;
                acc.ShippingPostalCode = acc.BillingPostalCode;
                acc.ShippingCountry = acc.BillingCountry; 
            }
        }
        
    }
    
}