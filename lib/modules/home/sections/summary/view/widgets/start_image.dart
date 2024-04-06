import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/constant/assets/app_assets.dart';
import 'package:portfolio/core/constant/size/app_size.dart';

import '../../../../controller/home_controller.dart';

class StartImage extends StatelessWidget {
  const StartImage({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Transform.translate(
          offset: Offset(AppSize.isTabletScreen(context: context) ? 0 : 150,
              controller.animation!.value),
          child: Container(
            width: 350,
            height: 350,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(AppAssets().me),
          )),
    );
  }
}
