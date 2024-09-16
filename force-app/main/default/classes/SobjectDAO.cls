public class SobjectDAO {

    
    public static List<Account> insertSObjects (List<SObject> sObj) {
			if(sObj.size() >0) {
				try {
					SObjectAccessDecision securityDecision = Security.stripInaccessible(
                                         AccessType.CREATABLE, sObj);
                    //List<Account> acc = securityDecision.getRecords();
					Database.insert(securityDecision.getRecords());
					return securityDecision.getRecords();                    
                     
                    
                    
                  
                    
                  
					
				}
				catch (DmlException dmlEx) {
				
				}
                
               
			}
        	return sObj;
			
		}
}