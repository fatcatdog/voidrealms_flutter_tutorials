class PizzaSize {

  Map<String, bool> sizeList = new Map<String, bool>();

  sizes() {
    sizeList.putIfAbsent('Small', () => false);
    sizeList.putIfAbsent('Medium', () => false);
    sizeList.putIfAbsent('Large', () => false);
    sizeList.putIfAbsent('Extra-Large', () => false);
  }
}

