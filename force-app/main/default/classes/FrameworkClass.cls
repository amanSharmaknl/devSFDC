public class FrameworkClass {
    
    public class FrameworkClassException extends Exception {}
    
    public FrameworkClass(){
        try
        {		Account acc = new account(name ='hi there');
         		insert acc ;
			         covertMgrClass.doCoversion();
            
        }
        catch(exception e){
            system.debug('exceptoin called in framework'+e.getMessage());
        }
    }

}