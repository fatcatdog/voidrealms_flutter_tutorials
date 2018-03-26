import 'package:image/image.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

void download(String url, String path, String preview) {
  
  //get the file 
  var data = http.readBytes(url);
  
  //write the file to disk
  
  data.then((buffer){
    File f = new File(path);
    RandomAccessFile rf = f.openSync(mode: FileMode.WRITE);
    rf.writeFromSync(buffer);
    rf.flushSync();
    rf.closeSync();
  //load the image
  Image image = decodeImage(new File(path).readAsBytesSync());

  //resize the iamge
  Image thumbnail = copyResize(image, 200);

  //Save the thumbnail to disk
  new File(preview)
  ..writeAsBytesSync(encodePng(thumbnail));
  });
}

main(List<String> arguments) {

  String url = 'https://i.redd.it/6cvckxxwdxm01.gif';
  String path = '/users/jacobduchen/desktop/test.gif';
  String preview = '/users/jacobduchen/desktop/preview.png';

  download(url, path, preview);
}
