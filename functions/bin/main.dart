import 'cat.dart';
import 'dog.dart';
import 'house.dart';

main(List<String> arguments) {
cat MrCat = new cat();
cat Fluffy = new cat();
dog Fido = new dog();

Fluffy.speak();
MrCat.speak();
Fido.speak();
//print(Fido.color());

house house1 = new house();
house house2 = new house();
house house3 = new house();

house1.color = 'red';
  house2.color = 'yellow';
  house3.color = 'green';


  house1.width = 100;
house1.length = 200;
house1.yearsold = 10;

print(house1.footage);
print (house1.yearsold);

List<house> homes = new List<house>();
homes.add(house1);
  homes.add(house2);

  homes.add(house3);

  homes.forEach((val){
  print(val.color);
});
}
