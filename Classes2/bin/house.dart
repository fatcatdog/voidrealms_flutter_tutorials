class house {
  int width = 0;
  int length = 0;

//  house(){
//    print('consturcted!');
//  }

  house({int w =1, int l=1}){
    width = w;
    length = l;

    print('Width: $width, length: $length');
  }

  void dispose() {
    print(' kill me now');
  }

  }