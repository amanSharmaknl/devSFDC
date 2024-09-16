public class LWCLazyLoadingCtrl {    
    @AuraEnabled
    public static List<Account> getAccountData() {
        return [SELECT Id, Name, Type, Phone, CreatedDate FROM Account LIMIT 1000];
    }

    @AuraEnabled
    public static List<Account> getAccountById(String accId) {
        if(String.isBlank(accId)){
            return getAccountData();
        }
        return [SELECT Id, Name, Type, Phone, CreatedDate FROM Account where Id=:accId LIMIT 1000];
    }
 }