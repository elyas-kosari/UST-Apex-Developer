public class ConsciousKitchen {
  // Instance Variables
  private List<String> tools = new List<String>{
    'Cookware',
    'Cutting Board',
    'Bakeware',
    'Spatula',
    'Whisk',
    'Mixing Bowl'
  };

  private List<String> appliances = new List<String>{
    'Mixer',
    'Blender',
    'Oven',
    'Stove',
    'Refrigrator',
    'Freezer'
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
}
