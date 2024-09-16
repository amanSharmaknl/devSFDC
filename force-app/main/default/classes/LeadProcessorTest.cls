@isTest
public class LeadProcessorTest {
	
    
    @isTest static void unitTestOne()
    {
        List<Lead> leads=new List<Lead>();
        for(Integer i=0;i<200;i++)
        {
            leads.add(new Lead(firstName='aman', lastName='sharma'+i, Company='Aman Sharma Tech'));
        }
        insert leads;
        
        System.Test.startTest();
        Database.executeBatch(new LeadProcessor(), 200);
        System.Test.stopTest();
    }
}