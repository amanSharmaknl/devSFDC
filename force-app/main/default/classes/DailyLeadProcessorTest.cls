@isTest
private class DailyLeadProcessorTest {
	
    @isTest static void unitTestone()
    {
        String CRON_EXP = '0 0 0 15 3 ? 2022';
 
        List<Lead> leads=new List<Lead>();
        for(integer i=0;i<200;i++){
            leads.add(new lead(firstName='test', lastName=''+i, company='aman tech inc.'));
        }
        insert leads;
        System.assert(leads.size()>0);
        System.schedule('my job', CRON_EXP,  new DailyLeadProcessor());
    }
}