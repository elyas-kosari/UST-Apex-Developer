trigger AccountTrigger on Account (before insert) {
    for (Account a : trigger.new) {
        a.website = 'blahblahblah.ca';
        a.AnnualRevenue = 123456789;
    }
}