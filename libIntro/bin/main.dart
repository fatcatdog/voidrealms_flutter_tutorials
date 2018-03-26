//local
import 'package:libIntro/libIntro.dart' as cat;

//built in
import 'dart:convert';

main(List<String> arguments) {
  print('Hello world: ${cat.calculate()}!');

  Map<String, int> map = new Map<String, int>();
  map.putIfAbsent('jake', () => 43);
  map.putIfAbsent('alice', () => 41);

  String enc = JSON.encode(map);
  print(enc);

  Map<String, int> people = JSON.decode(enc);
  people.forEach((key, value) {
    print('$key is $value years old');
  });

}
