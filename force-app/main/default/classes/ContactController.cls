public with sharing class ContactController {
    

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        try{

        
        return [
            SELECT 
            firstName,
            lastName,
            email
        FROM
            CONTACT
        ];
        }
        catch(Exception ex){
            throw new AuraHandledException('exceptionText');
        }
    }
}