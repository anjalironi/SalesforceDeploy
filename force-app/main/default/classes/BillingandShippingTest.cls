@isTest
public class BillingandShippingTest {
    @isTest
    private Static void copyBillingToShippingInsertTest(){
        list<Account> acclist = new list<Account>();
        for(Integer i=0;i<2;i++){
            Account acc = new Account();
            acc.Name = 'Test ' + i;
            acc.BillingCity= 'TestCity';
                acc.BillingCountry='TestCity';
                acc.BillingPostalCode= '123456';
                acc.BillingState = 'TestState';
                acc.BillingStreet='TreetStreet';
            acc.copyBillingToShipping__c=true;
            acclist.add(acc);
        }
        Test.startTest();
        insert acclist;
        Test.stopTest();
        Account Updateacc=[select Id,ShippingCity From Account where Id =: acclist[0].Id];
        System.AssertEquals(acclist[0].BillingCity, Updateacc.ShippingCity );
        
        
    }
    
     @isTest
    private Static void copyBillingToShippingUpdateTest(){
        list<Account> acclist = new list<Account>();
        for(Integer i=0;i<2;i++){
            Account acc = new Account();
            acc.Name = 'Test ' + i;
            acc.BillingCity= 'TestCity';
                acc.BillingCountry='TestCity';
                acc.BillingPostalCode= '123456';
                acc.BillingState = 'TestState';
                acc.BillingStreet='TreetStreet';
            acclist.add(acc);
        }
        Test.startTest();
        insert acclist;
        for(integer i=0;i<2;i++){
            acclist[i].copyBillingToShipping__c=true;
        }
        update acclist;
        Test.stopTest();
        Account Updateacc=[select Id,ShippingCity From Account where Id =: acclist[1].Id];
        System.AssertEquals(acclist[1].BillingCity, Updateacc.ShippingCity );
        
        
    }
    

}