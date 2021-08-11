public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts(){
        return [ select Id, Name, Active__c from Account where Active__c = 'Yes'];
    }
}