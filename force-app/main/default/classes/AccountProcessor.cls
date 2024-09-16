public class AccountProcessor {

    @future
    public static void countContacts(List<Id> accountIds)
    {
        List<Account> accounts=new List<account>();
        for(Account acc:[select id,(select id from contacts) from account where id in:accountIds])
        {
            accounts.add(new account(id=acc.Id, Number_of_Contacts__c=acc.contacts!=null?acc.contacts.size():0));
            
        }
        update accounts;
        
    }
}