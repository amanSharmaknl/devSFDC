public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer noOfContacts,  string contactLastName)
    {
        List<Contact> cons=new List<Contact>();
        for(Integer i=0;i<noOfContacts;i++){
            cons.add(new Contact(firstName='firstName'+i, lastName=contactLastName));
        }
        return cons;
    }

}