import 'feline.dart';

class lion extends feline {
  void roar() => print('roar!');

  void test() {
    print('testing in lion');
//    assert(hasHair());
//    assert(hasBackbone());
//    assert(hasClaws());

  super.test();
  }
}