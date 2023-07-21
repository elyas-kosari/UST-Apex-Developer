public with sharing class AccountTriggerHandler {
    public static void changeWebsite(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            acc.Website = 'talentforceconsulting.com';
        }
    }

    public static void createRelatedContact(List<Account> newAccounts, Map<Id, Account> oldAccount) {
        for (Account acc : newAccounts) {
            Contact con = new Contact();
            con.firstName = 'Elise';
             con.LastName = 'Bond';
            con.AccountId = acc.Id;
            insert con;
        }
    }
}