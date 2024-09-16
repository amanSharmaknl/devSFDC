global class DailyLeadProcessor implements Schedulable  {
    
    global void execute(SchedulableContext sc)
    {
        List<lead> leads=[select id, leadSource from Lead where LeadSource=null limit 200];
       for(Lead leadRec:leads)
       {
           leadRec.leadSource='Dreamforce';
       }
        update leads;
            
    }
    
    

}