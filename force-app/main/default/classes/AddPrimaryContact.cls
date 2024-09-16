global class AddPrimaryContact implements Queueable 
{
    
    public AddPrimaryContact(Contact con, String state)
    {
        List<Contact> cons=new List<Contact>();
        for(Account acc: [select id, name from Account where BillingState=:state]){
            Contact contact=con.clone(false,true);
            contact.accountId=acc.Id;
            cons.add(contact);
        }
        
        if(cons.size()>0){
            insert con;
        }
        
    }
    global void execute(QueueableContext qc){
        
    }
}