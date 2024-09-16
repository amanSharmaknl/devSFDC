@isTest
public class TestRestrictContactByName {
		
    @isTest static void unitTestOne()
    {
        insert new Contact[]{new Contact(firstName='Aman', lastName='INVALIDNAME'), new Contact(firstName='Aman', lastName='Sharma')}; 
    }
}