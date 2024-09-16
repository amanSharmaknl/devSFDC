@isTest
public class TestVerifyDate {
    
    @isTest static void unitTestOne()
    {
        Date date1=System.today();
        Date date2=System.today();
        VerifyDate.CheckDates(date1,date2);
        
        date1=date1.addDays(10);
        VerifyDate.CheckDates(date1,date2);
        
        
    }
    
    @isTest static void unitTestTwo()
    {
        Date date1=System.today();
        Date date2=date1.addDays(30);
        VerifyDate.CheckDates(date1,date2);
        
        date1=date1.addDays(10);
        VerifyDate.CheckDates(date1,date2);
        
    }
    

}