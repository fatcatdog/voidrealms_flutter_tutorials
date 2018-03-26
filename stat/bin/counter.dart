class counter {
  static int _count = 0;
  int get count => _count;
  void set count(int value) => _count = value;

  static void increase() => _count++;
  static void decrease() => _count--;

  void addTen() => _count += 10;
  void removeTen() => _count -= 10;

  static void printCount() => print(_count);
}