@isTest
private class AnimalLocatorTest 
{
    @isTest static void unitTestOne()
    {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        string animalName=AnimalLocator.getAnimalNameById(1);
    
    
    
    }




}