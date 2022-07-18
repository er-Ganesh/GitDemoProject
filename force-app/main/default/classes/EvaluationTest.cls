@isTest
public class EvaluationTest {
    @isTest
    public static void shippingAddressUpdateTest()
    {
		Test.startTest();
		Account acc = new Account();
        acc.Name='Test Account';
        acc.BillingStreet='Test BillingStreet';
        acc.BillingCity='Test BillingCity';
        acc.BillingState='Test BillingState';
        acc.BillingPostalCode='BillingPostalCode';
        acc.BillingCountry='Test BillingCountry';
        insert acc;
      
        Test.stopTest();
    }

 
}