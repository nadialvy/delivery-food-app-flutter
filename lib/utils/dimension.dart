import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // 667 / 320 = 2.08
  static double pageView = screenHeight/2.08;

  // 667 / 220 = 3.03;
  static double pageViewContainer = screenHeight/3.03;

  // 667 / 120 = 5.53
  static double pageViewTextContainer = screenHeight/5.53;

  // dynamic height for padding and margin
  // 667 / 10, 15, 20 = 66.7
  static double height10 = screenHeight/66.7;
  static double height15 = screenHeight/44.4;
  static double height20 = screenHeight/33.3;
  static double height30 = screenHeight/22.2;
  static double height45 = screenHeight/14.8;

  // dynamic width for padding and margin
  //width = 412
  static double width10 = screenWidth/41.2;
  static double width15 = screenWidth/27.5;
  static double width20 = screenWidth/20.6;
  static double width30 = screenWidth/13.7;
  static double width45 = screenWidth/9.15;

  // 667 / 20 = 33.35
  static double font16 = screenHeight/41.7;
  static double font18 = screenHeight/33.3;
  static double font22 = screenHeight/30.3;

  static double radius20 = screenHeight/33.3;
  static double radius10 = screenHeight/66.7;
  static double radius30 = screenHeight/22.2;

  static double iconSize24 = screenHeight/27.8;
  static double iconSize16 = screenHeight/41.7;
  static double iconSize12 = screenHeight/55.6;

  //image
  static double image90 = screenHeight / 7.41;
  static double popFoodImg250 = screenHeight / 2.67;
  //detail image

  //bottom height
  static double bottomHeightBar = screenHeight / 6.67;
  


}