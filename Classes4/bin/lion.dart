import 'feline.dart';

class lion extends feline {
  bool hasBackbone() => true;
  bool hasHair() => true;
  bool hasClaws() => true;

  @override
  void speak()=> print('roar!');
}