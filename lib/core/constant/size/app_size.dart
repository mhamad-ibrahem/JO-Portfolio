import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSize {
  static const double appCustomRadius = 8;
  static const double kDesktopMaxWidth = 1000.0;
  static const double kTabletMaxWidth = 760.0;
  static const double mobilWidth = 500.0;
  static double screenWidth({required BuildContext context}) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight({required BuildContext context}) {
    return MediaQuery.of(context).size.height;
  }

  static bool isMobileScreen({required BuildContext context}) {
    return MediaQuery.of(context).size.width <= mobilWidth;
  }

  static bool isTabletScreen({required BuildContext context}) {
    return MediaQuery.of(context).size.width >= kTabletMaxWidth;
  }

  static bool isMobileScreenWithOutContext() {
    debugPrint("id mobile ${Get.size.width <= mobilWidth}");
    return Get.size.width <= mobilWidth;
  }

  static bool isTabletScreenWithOutContext() {
    
    debugPrint("id tablet ${(Get.size.width >= kTabletMaxWidth&&Get.size.width<kDesktopMaxWidth)} size is ${Get.size.width}");
    return (Get.size.width >= kTabletMaxWidth&&Get.size.width<kDesktopMaxWidth);
  }

  static double getMobileMaxWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * .8;
}
