import 'dart:convert';
import 'dart:io';

void list(String path) {
  try {
    Directory root = new Directory(path);
    if(root.existsSync()) {
      for(FileSystemEntity f in root.listSync()) {
        print(f.path);
      }
    }
  }
  catch(e) {
    print(e.toString());
  }
}

bool writeFile(String file, String data, FileMode mode) {
  try {
    File f = new File(file);
    RandomAccessFile rf = f.openSync(mode: mode);
    rf.writeStringSync(data);
    rf.flushSync();
    rf.closeSync(); // may call flush
    return true;
  }
  catch(e) {
    print(e.toString());
    return false;
  }
}

String readFile(String file) {
  try {
    File f = new File(file);
    return f.readAsStringSync();
  }
  catch(e) {
    print(e.toString());
  }
}

List<String> readLines(String file) {
  try {
    File f = new File(file);
    return f.readAsLinesSync();
  }
  catch(e) {
    print(e.toString());
  }
}

bool writeJSON(String file) {
  Map<String, int> map = new Map<String, int>();
  map.putIfAbsent('Bryan', () => 43);
  map.putIfAbsent('Heather', () => 25);

  String data = JSON.encode(map);
  return writeFile(file, data, FileMode.WRITE);
}

void readJSON(String file) {
  String data = readFile(file);
  if(data.isEmpty) {
    print('No data');
    return;
  }

  Map<String, int> people = JSON.decode(data);

  print('People Object:');
  people.forEach((key, value) {
    print('$key is $value years old');
  });
}

main(List<String> arguments) {

  String path = '/users/jacobduchen/desktop';
  String txtFile = '/users/jacobduchen/desktop/test.txt';
  String txtJSON = '//users/jacobduchen/desktop/json.txt';

  list(path);

  if(writeFile(txtFile, 'Hello World\n', FileMode.APPEND)) {

    //Red as one giant string
    print(readFile(txtFile));

    //Read the lines
    List<String> list = readLines(txtFile);
    print(list.length);
  }

  if(writeJSON(txtJSON)) readJSON(txtJSON);


}