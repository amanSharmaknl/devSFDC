public without sharing class accountHomeTest1Ctlr {

    public PageReference createAccount() {
        insert new account(name ='test1');
        return null;
    }


    public Integer getAccountSize()
    {
    
        return [select count() from account] ;
    }
}