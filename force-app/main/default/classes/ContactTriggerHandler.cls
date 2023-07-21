public with sharing class ContactTriggerHandler {
    public static void createNewCase(List<Contact> newContacts, Map<Id, Contact> oldContact) {
        for (Contact con : newContacts) {
            Case ca = new Case();
            ca.ContactId = con.Id;
            ca.AccountId = con.AccountId;
            insert ca;
        }
    }
}