import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/constant/routes/app_routes.dart';
import '../../../../../../../core/constant/size/app_size.dart';
import '../../../../../controller/home_controller.dart';
import '../shared/project_hover_widget.dart';

class SwiperImages extends GetView<HomeController> {
  const SwiperImages({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.screenHeight(context: context) * 0.5,
      width: AppSize.screenWidth(context: context),
      child: !AppSize.isMobileScreen(context: context)
          ? Row(
              children: [
                MouseRegion(
                  onEnter: (event) {
                    log("hover");
                    controller.projects[index].isHovering = true;
                    controller.update();
                  },
                  onExit: (event) {
                    controller.projects[index].isHovering = false;
                    controller.update();
                  },
                  child: GetBuilder<HomeController>(
                      builder: (controller) => Stack(
                            children: [
                              SizedBox(
                                height: AppSize.screenHeight(context: context) *
                                    0.5,
                                width:
                                    AppSize.screenWidth(context: context) * 0.4,
                                child: Swiper(
                                    itemCount: controller
                                        .projects[index].imageList.length,
                                    itemWidth:
                                        MediaQuery.of(context).size.width * 0.4,
                                    // itemHeight: 100.0,
                                    autoplay: true,
                                    duration: 6,
                                    itemBuilder: (context, index2) {
                                      return GestureDetector(
                                        onTap: () {
                                          log("model is ${controller.projects[index].name} index $index");
                                          Get.toNamed(
                                              AppRoutes.projectDetailsRoute,
                                              arguments: {
                                                "model":
                                                    controller.projects[index]
                                              });
                                        },
                                        child: Image.asset(
                                          controller.projects[index]
                                              .imageList[index2],
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    }),
                              ),
                              if (controller.projects[index].isHovering)
                                ProjectHoverWidget(
                                  title: controller.projects[index].name,
                                  onPressed: () {
                                    log("model is ${controller.projects[index].name} index $index ");
                                    Get.toNamed(AppRoutes.projectDetailsRoute,
                                        arguments: {
                                          "model": controller.projects[index]
                                        });
                                  },
                                )
                            ],
                          )),
                ),
                SizedBox(
                  height: AppSize.screenHeight(context: context) * 0.5,
                  width: AppSize.screenWidth(context: context) * 0.4,
                  child: MouseRegion(
                    onEnter: (event) {
                      controller.projects[index + 1].isHovering = true;
                      controller.update();
                    },
                    onExit: (event) {
                      controller.projects[index + 1].isHovering = false;
                      controller.update();
                    },
                    child: GetBuilder<HomeController>(
                      builder: (controller) => Stack(
                        children: [
                          Swiper(
                              duration: 4,
                              itemCount: controller
                                  .projects[index + 1].imageList.length,
                              itemWidth:
                                  AppSize.screenWidth(context: context) * 0.4,
                              // itemHeight: 100.0,
                              autoplay: true,
                              itemBuilder: (context, index2) {
                                return Image.asset(
                                  controller
                                      .projects[index + 1].imageList[index2],
                                  fit: BoxFit.contain,
                                );
                              }),
                          if (controller.projects[index + 1].isHovering)
                            ProjectHoverWidget(
                              title: controller.projects[index + 1].name,
                              onPressed: () {
                                log("model is ${controller.projects[index + 1].name} index ${index + 1}");
                                Get.toNamed(AppRoutes.projectDetailsRoute,
                                    arguments: {
                                      "model": controller.projects[index + 1]
                                    });
                              },
                            )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          : GetBuilder<HomeController>(
              builder: (controller) => Container(
                // margin: EdgeInsets.only(
                //     right: AppSize.screenWidth(context: context) * 0.1),
                alignment: Alignment.center,
                height: AppSize.screenHeight(context: context) * 0.8,
                width: AppSize.screenWidth(context: context) * 0.8,
                child: MouseRegion(
                  onHover: (event) {
                    controller.projects[index].isHovering =
                        !controller.projects[index].isHovering;
                  },
                  child: Stack(
                    children: [
                      Swiper(
                          duration: 4,
                          itemCount:
                              controller.projects[index].imageList.length,
                          itemWidth: AppSize.screenWidth(context: context),
                          // itemHeight: 100.0,
                          autoplay: true,
                          // onTap: (int index) {

                          // },
                          itemBuilder: (context, index2) {
                            return Image.asset(
                              controller.projects[index].imageList[index2],
                              fit: BoxFit.contain,
                            );
                          }),
                      if (controller.projects[index].isHovering)
                        ProjectHoverWidget(
                          title: controller.projects[index].name,
                          onPressed: () {
                            log("model is ${controller.projects[index].name} index $index ");
                            Get.toNamed(AppRoutes.projectDetailsRoute,
                                arguments: {
                                  "model": controller.projects[index]
                                });
                          },
                        )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
