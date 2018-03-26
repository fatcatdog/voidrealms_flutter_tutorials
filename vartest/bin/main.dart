
main(List<String> arguments) {

//what is a variable
//something that will change over time
var something = "hello world";
something = "goodbye";
//print(something);

//constants never change...

const nope = 1;
//nope = 2;
//print(nope);

final noper = 1;
//noper = 2;
//print(noper);
//finals own that var name and are consts

//numbers

num age = 15;
age += 30;

//print("Age is $age");

bool isworking = false;
isworking = true;

//print(isworking);

int cats = 1;
double pi = 3.14;

//strings
String title = "h\nello\'s world";
title += " my kittens";
//print(title);

//  print(title.substring(0, 6));

  title = title.replaceAll('ll', 'rl');
//  print(title);

String names = "jacob, brian, pete, ian";
assert(names.contains('pete'));

List<String> list = names.split(",");
list.insert(3, "craig");
//print(list);

//print(list.indexOf('craig'));
list.forEach((thing){
//  print(thing);
});

Map<String, int> ages = {
  'Bryan': 43,
  'Heather': 24,
  'Karl': 41,
};
ages['marc'] = 32;
//print(ages);
ages.forEach((k, v){
  print('$k is $v years old');
});


}
