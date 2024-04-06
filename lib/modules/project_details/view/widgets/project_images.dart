import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/constant/colors/app_colors.dart';
import 'package:portfolio/core/constant/size/app_size.dart';
import 'package:portfolio/modules/project_details/controller/project_details_controller.dart';



class ProjectImages extends StatelessWidget {
  const ProjectImages({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectDetailsController controller= Get.find();
    return SizedBox(
      height:AppSize.isMobileScreen(context: context)?AppSize.screenHeight(context: context) * 0.4 : AppSize.screenHeight(context: context) * 0.7,
      width: AppSize.screenWidth(context: context),
      child: Swiper(
          duration: 4,
          itemCount: controller.projectsModel.imageList.length,
          itemWidth: AppSize.screenWidth(context: context),
          autoplay: true,
          onTap: (int index) {
         log("project name ${controller.projectsModel.name}");
          },

          pagination: const SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: DotSwiperPaginationBuilder(
              activeColor: AppColors.secondaryColor,
              color: AppColors.kCaptionColor,
              size: 10,
              activeSize: 15,
            )
          ),
          itemBuilder: (context, index2) {
            return Image.asset(
              controller.projectsModel.imageList[index2],
              fit: BoxFit.contain,
            );
          }),
    );
  }
}
