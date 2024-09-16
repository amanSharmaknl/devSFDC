@isTest
private class ParkLocatorTest {

    
    
    private static testmethod void unitTest(){
        	
         Test.setMock(WebServiceMock.class, new ParkServiceMock());
        
        String[] parks = ParkLocator.country('India');
        Assert.areEqual(parks.size() , 1);
        
    }
}