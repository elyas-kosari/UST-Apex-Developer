@isTest
private class Calculator_Test {

    @isTest
    private static void testAddMethod() {
        // Create Test Data
        Double a = 15;
        Double b = 16;

        // Perform the Test
        Test.startTest();
        Double c = Calculator.add(a, b);
        Test.stopTest();

        // Verify the Result
        System.assertEquals(31, c, 'The add method didn\'t work as expected');
    }

    @isTest
    private static void testSubtractMethod() {
        // Create Test Data
        Double a = 15;
        Double b = 16;

        // Perform the Test
        Test.startTest();
        Double c = Calculator.subtract(a, b);
        Test.stopTest();

        // Verify the Result
        System.assertEquals(-1, c, 'The subract method didn\'t work as expected');
    }

    @isTest
    private static void testMultiplyMethod() {
        // Create Test Data
        Double a = 15;
        Double b = 16;

        // Perform the Test
        Test.startTest();
        Double c = Calculator.multiply(a, b);
        Test.stopTest();

        // Verify the Result
        System.assertEquals(240, c, 'The multiply method didn\'t work as expected');
    }

    @isTest
    private static void testDivideMethodForNonZero() {
        // Create Test Data
        Double a = 160;
        Double b = 16;

        // Perform the Test
        Test.startTest();
        Double c = Calculator.divide(a, b);
        Test.stopTest();

        // Verify the Result
        System.assertEquals(10, c, 'The divide method didn\'t work as expected');
    }

    @isTest
    private static void testDivideMethodForZero() {
        // Create Test Data
        Double a = 160;
        Double b = 0;

        // Perform the Test
        Test.startTest();
        Double c = Calculator.divide(a, b);
        Test.stopTest();

        // Verify the Result
        System.assertEquals(null, c, 'The divide method didn\'t work as expected');
    }
}