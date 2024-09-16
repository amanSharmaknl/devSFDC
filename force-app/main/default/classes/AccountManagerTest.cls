@isTest
private class AccountManagerTest {

    
    @isTest static  void unitTest()
    {
        Account account = new Account(Name = 'Http Get method');
        insert account;
        Contact con = new Contact(firstName = 'Aman', lastName = 'Sharma', accountId= account.Id);
        insert con;
        RestRequest request = new RestRequest();
 		request.requestUri ='https://amansharma-dev-ed.my.salesforce.com/services/apexrest/Accounts/'+account.Id+'/contacts';
        request.httpMethod = 'GET';
        request.addHeader('Content-Type', 'application/json');
        RestContext.request = request;
        
        Account accounts = AccountManager.getAccount();
        Assert.areEqual(account.Id, accounts.Id);
 
        
 
        
    }
}