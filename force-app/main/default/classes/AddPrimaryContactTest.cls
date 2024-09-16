@isTest
public class AddPrimaryContactTest {

    @isTest static void unitTestOne()
    {
        List<Account> accounts=new List<Account>();
        for(Integer i=0;i<100;i++){
            
            accounts.add(new account(name='aman'+i, BillingState=((i<50)?'NY':'CA')));
        }
        
        insert accounts;
        
        System.assertEquals(accounts.size(),100);
        Test.startTest(); 
            System.enqueueJob(new AddPrimaryContact(new Contact(firstName='aman', lastName='Sharma'), 'CA'));
            
            Test.stopTest();
    }
}