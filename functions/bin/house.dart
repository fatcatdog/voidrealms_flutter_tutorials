class house {
  //private
  int _age = 0;

  //public
  String color = 'white';
  int width = 0;
  int length = 0;

  //getter and setter

  int get footage => width * length;
  int get yearsold => _age;
  set yearsold(int value) => _age = value + 10;

}