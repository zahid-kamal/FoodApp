import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.6;

  static double pageViewContainer = screenHeight / 3.79;
  static double pageViewTextContainer = screenHeight / 6.95;
  //For Dynamic height padding and margin
  static double height10 = screenHeight / 83.5;
  static double height20 = screenHeight / 41.75;
  static double height15 = screenHeight / 55.66;
  static double height30 = screenHeight / 27.83;
  static double height45 = screenHeight / 18.55;
//For Dynamic width padding and margin
  static double width10 = screenHeight / 83.5;
  static double width20 = screenHeight / 41.75;
  static double width15 = screenHeight / 55.66;
  static double width30 = screenHeight / 27.83;
  static double width45 = screenHeight / 18.55;
//redius
  static double font20 = screenHeight / 41.75;
  static double radius20 = screenHeight / 41.75;
  static double radius15 = screenHeight / 55.66;
  static double radius30 = screenHeight / 27.83;
  //icon size
  static double iconSize24 = screenHeight / 34.79;
  //list view size
  static double listViewImgSize = screenHeight / 6.95;
  static double listViewTextContSize = screenHeight / 8.35;
}
