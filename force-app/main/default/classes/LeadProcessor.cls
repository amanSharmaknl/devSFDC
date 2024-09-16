global class LeadProcessor implements Database.Batchable<sobject> {
    
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator([select id, LeadSource from Lead]);
    }
    
    global void execute(Database.BatchableContext bc, List<sobject> records)
    {
        List<Lead> updateLeads=new List<Lead>();
        for(Lead lead:(List<lead>)records){
            if(lead.LeadSource!='Dreamforce'){
            lead.LeadSource='Dreamforce';
            	updateLeads.add(lead);
            }
        }
        if(updateLeads.size()>0)
        update updateLeads;

    }
	
    global void finish(Database.BatchableContext bc)
    {
        
    }
}