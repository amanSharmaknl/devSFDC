public with sharing class AccountTriggerHandler {

   public static boolean hasExecuted = false;
   private boolean isExecuting = false; 
   private integer accountBatchSize = 0;
   private Map<Id, Account> newAccountMap;
   private Map<Id, Account> oldAccountMap;   
    
   
     public  AccountTriggerHandler(Map<Id, Account> oldAccountMap, Map<Id, Account> newAccountMap, 
                                      System.TriggerOperation triggerEvent ,boolean isExecuting, integer accountBatchSize) {
    	system.debug('i am at first line '+hasExecuted);
       
        system.debug('trigger event is '+triggerEvent);
        this.oldAccountMap=oldAccountMap;
        this.newAccountMap=newAccountMap;                                 
        switch on triggerEvent 
        {
        
            when BEFORE_INSERT
            {
                OnBeforeInsert();
            }
            when AFTER_INSERT
            {
                OnAfterInsert();
            }
             
            when BEFORE_UPDATE
            {
                OnBeforeUpdate();
                
            }
            when AFTER_UPDATE
            {
                OnAfterUpdate();
            }
            
            
            when BEFORE_DELETE
            {
                OnBeforeDelete();
            }
            when AFTER_DELETE 
            {
                OnAfterDelete();
            }
        }
    }
    
    public void OnBeforeInsert(){
        
    }
    
    public void onAfterInsert()
    {
     	list<contact> contacts=new list<contact>();
        system.debug('Ye Ye ......'+newAccountMap);
        for(Account acc:newAccountMap.values())
        {
            contacts.add(new contact(accountId=acc.Id, firstName='aman', lastName='sharma'));
            
        }
        insert contacts;
    }
    
    public void onBeforeUpdate()
    {
        
    }
    
    public void onAfterUpdate()
    {
        
    }
    
    public void onBeforeDelete()
    {
        
    }
    
    public void onAfterDelete()
    {
        
    }
}