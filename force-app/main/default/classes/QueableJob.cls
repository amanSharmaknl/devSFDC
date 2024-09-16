public class QueableJob implements Queueable, Finalizer {
	
    public class QueableJobException extends Exception{}
    
    public Integer myNumber;
    
    public QueableJob(Integer myNumber){
        this.myNumber=myNumber;
    }
    public QueableJob(){
        
    }
    
    public void execute(QueueableContext qx){
        
        try
        {
            System.debug('myNumber- in queueable-'+myNumber);
            Finalizer f = new QueableJob();
            //f.myNumber = myNumber;
            System.attachFinalizer(f);
            if(myNumber>3){
               
               
                    while (true) { // results in limit error
                          Account a = new Account();
                          a.Name = 'Account-Number-' ;
                          insert a;
         
        			}
 
               
               
               // throw new QueableJobException();
            }
            
        }
        catch(exception ex){
            
        }
        
    }
    
    
    public void execute(FinalizerContext ctx){
        System.debug('myNumber- in finalizer-'+myNumber);
        System.debug('Result in finalizer is'+ctx.getResult());
        if(ctx.getResult() != ParentJobResult.SUCCESS ){
            System.debug('running finalizer failure ');
            System.enqueueJob(new QueableJob(myNumber));
        }
    }
}