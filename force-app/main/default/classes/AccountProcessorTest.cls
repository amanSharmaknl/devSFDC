@isTest
public class AccountProcessorTest {
	
    @isTest static void unitTestOne()
    {
		List<Account> acc=new List<Account>();
        List<Contact> cons=new List<Contact>();

        for(Integer i=0;i<200;i++){
            acc.add(new account(name='aman'+i));
        }        
        
        insert acc;
        List<Id> accountIds=new List<Id>();
        for(account account:acc){
            accountIds.add(account.Id); 
            cons.add(new contact(accountId=account.Id, firstName='aman', lastName='sharma'+account.Id));
            
        }
        insert cons;
        Test.startTest();
        AccountProcessor.countContacts(accountIds);
        Test.stopTest();
    }
}