public with sharing class LoanRecords_CX {
    public List<Loan__c> myLoans { get {
        if (myLoans == NULL) {
            return [SELECT Id, Name, Loan_Amount__c, Is_Loyal__c, Has_Good_Credit__c, Grant_Loan__c
                    FROM Loan__c];
        }
        return myLoans;
    } set; }

    public LoanRecords_CX(ApexPages.StandardController std) {

    }
}