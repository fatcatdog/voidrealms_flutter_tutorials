import 'bird.dart';
import 'scorpion.dart';
import 'feline.dart';

class monster implements bird,feline,scorpion {
  bool hasStinger() => true;
  bool hasHair() => true;
  bool hasWings() => true;
  bool hasBackbone() => true;
  bool hasClaws() => true;

  @override
  void speak() {
    print('wkdjfnksjdbfks!');
  }
}
