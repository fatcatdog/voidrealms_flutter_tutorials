import 'counter.dart';

main(List<String> arguments) {
  counter.printCount();
  counter.increase();
counter.increase();
counter.printCount();

counter obj = new counter();
obj.addTen();
print(obj.count);
obj.count = 5;
print(obj.count);
obj = null;

  counter obj2 = new counter();
  obj2.addTen();
  print(obj2.count);
  obj2 = null;

print('obj set of null');
counter.printCount();
}
