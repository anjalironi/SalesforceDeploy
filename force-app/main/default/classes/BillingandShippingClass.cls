public class BillingandShippingClass {
    public static void copyBillingToShipping(list<Account> acclist){
        for(Account acc: acclist)
        {
            if(acc.copyBillingToShipping__c){
                acc.ShippingCity= acc.BillingCity;
                    acc.ShippingCountry=acc.BillingCountry;
                    acc.ShippingPostalCode=acc.BillingPostalCode;
                    acc.ShippingState=acc.BillingState;
                    acc.ShippingStreet=acc.BillingStreet;
                    
            }
        }   
    }

}