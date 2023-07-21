public class BurgersPlace implements IKitchen, ISide {
    public void cookFries(Boolean shouldBeCrispy) {
        System.debug('***** Start of cookFries method *****');
        
        if (shouldBeCrispy == true) {
            System.debug('Make it as crispy as possible');
            System.debug('Make sure you don\'t burn it');
        } else {
            System.debug('Make sure to take it off heat before getting crispy');
        }

        System.debug('***** End of cookFries method *****');
    }

    public void makeOrders() {
        System.debug('This is implemented in the CHILD class');
        System.debug('I\'m changing the implementation of the parent');
    }

    public String serveCustomers(String foodName) {
        makeOrders();
        cookFries(true);
        return 'Fries';
    }

    public String makeSalad(String saladName) {
        System.debug('***** Start of makeSalad method *****');
        System.debug('What type of salad would you like?');
        System.debug('***** Make salad for BurgersPlace *****');
       
       return 'Here is your ' + saladName + 'salad';
    }
}