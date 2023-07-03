public with sharing class Calculator {
    public static Double add(Double a, double b) {
        return a + b;
    }
    public static Double subtract(Double a, double b) {
        return a - b;
    }
    public static Double multiply(Double a, double b) {
        return a * b;
    }
    public static Double divide(Double a, double b) {
        if (b != 0) {
            return a / b;
        } else {
            System.debug('Divide by 0');
            return null;
        }
    }
}