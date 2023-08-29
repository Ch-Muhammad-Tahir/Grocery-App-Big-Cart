import 'package:flutter/material.dart';

class GetScreenSize {
 
  static Size getScreenSize(BuildContext context) {
 
    return MediaQuery.of(context).size;
  }

  static double getScreenWidth(BuildContext context) {
    if (MediaQuery.sizeOf(context).width > 1200) {
      return MediaQuery.sizeOf(context).width / 3;
    }
    if (MediaQuery.sizeOf(context).width > 650 &&
        MediaQuery.sizeOf(context).width < 1200) {
      return MediaQuery.sizeOf(context).width / 2;
    }
    return MediaQuery.sizeOf(context).width;
  }

  static double getScreenHeight(BuildContext context) {
    if (MediaQuery.of(context).size.height > 1200) {
      return MediaQuery.of(context).size.height / 3;
    }
    if (MediaQuery.of(context).size.height > 500 &&
        MediaQuery.of(context).size.height < 800) {
      return MediaQuery.of(context).size.height / 2;
    }
    return MediaQuery.of(context).size.height;
  }

  static Orientation getScreenOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }
}
