public class PizzaPlace implements IKitchen, ISide {
    public void makeOrders() {
        System.debug('This is implemented in the GRAND_CHILD class');
        System.debug('I\'m changing the implementation of the grand parent');
    }

    public String makeSalad(String saladName) {
        System.debug('***** Start of makeSalad method *****');
        System.debug('What type of salad would you like?');
        System.debug('***** Make salad for PizzaPlace *****');
       
       return 'Here is your ' + saladName + 'salad';
    }

    public String serveCustomers(String foodName) {
        makeOrders();
        makeSalad('Caesar');
        return 'Salad';
    }

    public void cookFries(Boolean shouldBeCrispy) {
        System.debug('***** Start of cookFries method *****');
        
        if (shouldBeCrispy == true) {
            System.debug('Make it as crispy as possible');
        } else {
            System.debug('Make sure to take it off heat before getting crispy');
        }

        System.debug('***** End of cookFries for PizzaPlace method *****');
    }
}