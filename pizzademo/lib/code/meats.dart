class meats {

  Map<String, bool> meatList = new Map<String, bool>();

  meats() {
    meatList.putIfAbsent('Pepperoni', () => false);
    meatList.putIfAbsent('Sausage', () => false);
    meatList.putIfAbsent('Chicken', () => false);
    meatList.putIfAbsent('Seafood', () => false);
    meatList.putIfAbsent('Anchovies', () => false);
    meatList.putIfAbsent('None!!!!!', () => false);
  }
}
