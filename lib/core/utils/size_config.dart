import 'package:flutter/material.dart';

class SizeConfig {


 // TO PUT EVERYTHING REPETED IN THE APP
 //* breakpoints of layouts 
  static const double desktop = 1200;
  static const double tablet = 800;
  

  static late double screenWidth , screenHeight , blockSizeHorizontal , blockSizeVertical;



  static init (BuildContext  context){

    final mediaQuery = MediaQuery.of(context);

    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }

}


//* I can add values of padding , Orentration , etc... 