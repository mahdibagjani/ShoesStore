import 'package:flutter/material.dart';
class AppConfig{
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double devicePixel;//1.5 small and bigger than ex.2 is normal
  void init(BuildContext context){
    _mediaQueryData=MediaQuery.of(context);
    screenWidth=_mediaQueryData.size.width;
    screenHeight=_mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    devicePixel = _mediaQueryData.devicePixelRatio;
  }
}