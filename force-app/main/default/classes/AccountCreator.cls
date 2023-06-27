public class AccountCreator {
    public static void createSampleAccount() {
        Account a = new Account();
        a.Name = 'MeAnna Account';
        a.Website = 'www.meanna.com';
        a.AnnualRevenue = 100000000;
        insert a;
        System.debug('This is MeAnna Record: ' + a);
    }
}