@RestResource(urlMapping='/Accounts/*/contacts')
global class AccountManager {

    @HttpGet
    global static Account getAccount(){
        Id accountId;
        RestRequest request = RestContext.request;
 		accountId = request.requestURI.split('/')[request.requestURI.split('/').size() - 2];
        return [SELECT ID,NAME, (select id, name from contacts) FROM ACCOUNT WHERE ID = : accountId] ; 
    }
}