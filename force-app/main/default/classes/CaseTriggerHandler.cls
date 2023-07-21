public with sharing class CaseTriggerHandler {
    public static void updateSubject(List<Case> newCases) {
        for (Case ca : newCases) {
            ca.Subject = 'Problem';
            ca.Description = 'This Case was created using three levels of triggers';
            ca.Origin = 'my Origin';
            System.debug('Operation is Done');
        }
    }
}