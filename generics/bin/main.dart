import 'stray.dart';
import 'trainer.dart';


void log<T>(T value) {
  print(value);
}

T add<T extends num>(T value) {
  return value + 1;
}

main(List<String> arguments) {
//  print('hello');
//  print(1);
//
//  print(add(1));
//  print(add('heello'));


stray fido = new stray();
trainer<stray> bob = new trainer<stray>();
bob.add(fido);
bob.train();
bob.remove(fido);
}
