import 'package:get/get.dart';
import 'package:portfolio/core/constant/size/app_size.dart';

import '../sections/summary/view/widgets/shared/custom_header.dart';
import '../controller/home_controller.dart';

HomeController controller = Get.find();
List<HeaderItem> headerItems = [
  HeaderItem(
      title: "SUMMARY",
      offset: 0,
      isButton:
          controller.scrollValues[0] == controller.scrollVal ? true : false,
      onTap: () {}),
  HeaderItem(
      title: "PROJECTS",
      offset:AppSize.isTabletScreenWithOutContext()? 895:AppSize.isMobileScreenWithOutContext()?881.877807617188: 635.5,
      isButton:
          controller.scrollValues[1] == controller.scrollVal ? true : false,
      onTap: () {}),
  HeaderItem(
      title: "EDUCATION",
      offset: AppSize.isTabletScreenWithOutContext()? 1209.5:AppSize.isMobileScreenWithOutContext()?1504.7476806640634: 1048.5,
      isButton:
          controller.scrollValues[2] == controller.scrollVal ? true : false,
      onTap: () {}),
  HeaderItem(
      title: "SKILLS",
      offset: AppSize.isTabletScreenWithOutContext()? 1681:AppSize.isMobileScreenWithOutContext()?1980.153564453126: 1424.5,
      isButton:
          controller.scrollValues[3] == controller.scrollVal ? true : false,
      onTap: () {}),
  HeaderItem(
      title: "EXPERIENCES",
      offset:AppSize.isTabletScreenWithOutContext()? 2163:AppSize.isMobileScreenWithOutContext()?2655.1810302734384: 1919,
      isButton:
          controller.scrollValues[4] == controller.scrollVal ? true : false,
      onTap: () {}),
  HeaderItem(
      title: "CONTACT ME",
      offset: AppSize.isTabletScreenWithOutContext()? 2539.812569002123:AppSize.isMobileScreenWithOutContext()?3491.389347166325: 2312.28,
      isButton:
          controller.scrollValues[5] == controller.scrollVal ? true : false,
      onTap: () {}),
];
