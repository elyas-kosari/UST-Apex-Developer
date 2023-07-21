@isTest
private class AccountTriggerHandler_Test {
    
    @isTest
    private static void testChangeWebsite() {

        Account a = new Account(Name = 'Test');
        insert a;
        System.Debug(Limits.getDmlStatements());
        
        Test.startTest();
        a = [SELECT Website, (SELECT LastName FROM Contacts) From Account WHERE Name = 'Test'];
        System.Debug(Limits.getDmlStatements());
        Test.stopTest();
        
        System.assertEquals('talentforceconsulting.com', a.Website, 'The Website is different');
        System.assertEquals(1, a.Contacts.size(), 'The Website is different');
    }
}