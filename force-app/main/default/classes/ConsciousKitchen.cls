public class ConsciousKitchen {
  // ************* Instance Variables *************
  
  private String name;
  private Integer noOfStaff;
  private List<Menu> menuItems = new List<Menu>();
  
  // ************* Constructors *************

  public ConsciousKitchen() {
    this.name = 'Conscious Kitchen';
    this.noOfStaff = 8;
  }

  public ConsciousKitchen(String name, Integer noOfStaff) {
    this.name = name;
    this.noOfStaff = noOfStaff;
  }

  // ************* Methods *************
  
  private void makeOrders(String foodName) {
    System.debug('***** Start of makeOrders method *****');
    System.debug('Start making the Order for ' + foodName);
    System.debug(foodName + ' is ready to be sent back to the customer');
    System.debug('***** End of makeOrders method *****');
  }

  private void prepIngredients() {
    System.debug('***** Start of prepFood method *****');
    System.debug('Prepare the ingredients');
    System.debug('***** End of prepFood method *****');
  }

  private void takeOrders(String foodName) {
    System.debug('***** Start of takeOrders method *****');
    System.debug('Take the Order for ' + foodName);
    System.debug('***** End of takeOrders method *****');
  }

  public String serveCustomers(String foodName) {

    // Taking the Order
    takeOrders(foodName);

    // Preparing the Ingredients
    prepIngredients();
    
    // Cooking the Food
    makeOrders(foodName);

    return 'Here\'s your food: ' + foodName;
  }

  // ************* Inner Classes *************

  public class Menu {
    
    private String foodItem;
    private Decimal price;

    public Menu() {
      this.foodItem = 'foodItem';
      this.price = 12.12;
    }
  }
}