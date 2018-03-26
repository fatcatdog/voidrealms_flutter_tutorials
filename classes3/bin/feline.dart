import 'mamal.dart';

class feline extends mamal {
  bool hasClaws() => true;

  void test() {
    assert(hasBackbone());
    assert(hasHair());
  }
}