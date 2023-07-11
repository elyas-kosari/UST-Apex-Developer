public class ConsciousKitchen {
  // ***************************** Instance Variables
  private List<String> tools = new List<String>{
    'Cookware', 'Cutting Board', 'Bakeware', 'Spatula', 'Whisk', 'Mixing Bowl'
  };

  private List<String> appliances = new List<String>{
    'Mixer', 'Blender',  'Oven', 'Stove', 'Refrigrator', 'Freezer'
  };

  // private List<Food> foodItems = new List<Food>();
  // private List<Worker> allWorkers = new List<Worker>();
  // private Worker chef = new Worker();
  public String name;
  private Integer noOfStaff;
  public List<Datetime> businessHours = new List<Datetime>{
    Datetime.newInstance(2023, 7, 10, 9, 0, 0),
    Datetime.newInstance(2023, 7, 11, 9, 0, 0),
    Datetime.newInstance(2023, 7, 12, 9, 0, 0),
    Datetime.newInstance(2023, 7, 13, 9, 0, 0),
    Datetime.newInstance(2023, 7, 14, 9, 0, 0),
    Datetime.newInstance(2023, 7, 15, 9, 0, 0),
    Datetime.newInstance(2023, 7, 16, 9, 0, 0)
  };

  // ***************************** Constructors

  public ConsciousKitchen() {
    this.name = 'Conscious Kitchen';
    this.noOfStaff = 8;
  }

  public ConsciousKitchen(String name) {
    this.name = name;
    this.noOfStaff = 8;
  }

  public ConsciousKitchen(Integer noOfStaff) {
    this.name = 'Conscious Kitchen';
    this.noOfStaff = noOfStaff;
  }

  public ConsciousKitchen(String name, Integer noOfStaff) {
    this.name = name;
    this.noOfStaff = noOfStaff;
  }

  // ***************************** Methods
  
  private String makeOrders(List<String> ingredients, String recipe, String foodName) {
    System.debug('Start making the Order for ' + foodName);
    System.debug('Here\'s the list of Ingredients');
    for (String ingredient : ingredients) {
      System.debug(ingredient);
    }
    System.debug('We will use this recipe to make the food');
    System.debug('Recipe: ' + recipe);

    return foodName + ' is ready to be sent back to the customer';
  }

  private List<String> prepFood(List<String> rawIngredients, List<String> tools) {
    List<String> preparedIngredients = new List<String>();
    for (String raw : rawIngredients) {
      preparedIngredients.add('Prepared ' + raw);
    }

    return preparedIngredients;
  }

  private List<String> washDishes(List<String> dirtyDishes) {
    List<String> cleanDishes = new List<String>();
    System.debug('Put the dirty dishes in the dishwasher');
    System.debug('Put the dishwasherTab in the dishwasher');
    for (String dirty : dirtyDishes) {
      cleanDishes.add('Washed ' + dirty);
    }

    return cleanDishes;
  }

  public String takeOrders(String customerName, String waiterName, String foodName) {
    String order = '';
    System.debug('Hello today, I\'m ' + waiterName + ' and I\'ll be serving you today.');
    System.debug('What can I get for you today ' + customerName + '?');
    System.debug('Writing ' + foodName + 'in my notepad');
    System.debug('Your food comes with a free coke');
    
    order = foodName + ', Coke';

    return order;
  }

  public String serveCustomers(String customerName, String waiterName, String foodName) {

    // Taking the Order
    String order = takeOrders(customerName, waiterName, foodName);

    // Preparing the Raw Ingredients
    List<String> rawIngredients = new List<String> {
      'Carrot', 'Tomato', 'Potato', 'Cheese', 'Dough', 'Sause', 'Patty'
    };
    List<String> preparedIngredients = prepFood(rawIngredients, this.tools);

    // Washing the Dishes
    List<String> dirtyDishes = new List<String> {
      'Plate', 'Fork','Knife', 'Bowl'
    };
    List<String> cleanDishes = washDishes(dirtyDishes);
    
    // Cooking the Food
    String recipe = 'Throw everything together to make something. Hopefully it will be delicious LOL';
    String cookedOrder = makeOrders(preparedIngredients, recipe, order);

    // Wash the Dishes Again!!
    List<String> cleanDishes = washDishes(dirtyDishes);

    return cookedOrder;
  }
}