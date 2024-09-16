public class covertMgrClass {
    
    public class covertMgrClassException extends Exception {}
    public static void doCoversion()
    {
        try
        {
            system.debug('1/0');
            if (true){
                throw new covertMgrClassException ('hellowwww');
            }
            
            system.debug('i am called');
        }
        catch(exception e){
            system.debug('in standard catch plus ' + e.getMessage());
        
        }
        finally {
            system.debug('i am in final method also');
        }
    }

}