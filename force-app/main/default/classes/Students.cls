public with sharing class Students {

    private static Map<String, Integer> studentMap = new Map<String,Integer>();
    
    // This method is populating the studentMap with some data
    private static void populateStudentMap() { //fdjkskhf jksdhf jkdshfjk sd
        studentMap.put('Robby', 90);
        studentMap.put('Thomas', 89);
        studentMap.put('Ratna', 88);
        studentMap.put('Elyas', 87);
    }

    // This method is printing my map for me
    public static void printEverything() {
        populateStudentMap();
        System.debug('Here are the student names and grades:');
        System.debug('Robby: ' + studentMap.get('Robby'));
        System.debug('Thomas: ' + studentMap.get('Thomas'));
        System.debug('Ratna: ' + studentMap.get('Ratna'));
        System.debug('Elyas: ' + studentMap.get('Elyas'));
    }
}