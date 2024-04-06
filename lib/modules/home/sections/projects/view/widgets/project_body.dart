
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/constant/size/app_size.dart';
import '../../../../controller/home_controller.dart';
import '../../controller/project_controller.dart';
import 'sub_widgets/project_images.dart';

class WorkBody extends StatelessWidget {
  WorkBody({super.key, required this.height});
  final double height;
  final MyWorkController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Container(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
          height: height,
          width: AppSize.screenWidth(context: context),
          child: Row(
            children: [
              !controller.isFirstIndex
                  ? Expanded(
                    child: GestureDetector(
                        onTap: () {
                          controller.isFirstIndex ? null : controller.swapLeft();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                  )
                  : const SizedBox(
                      width: 10,
                    ),
              Expanded(
                flex: 20,
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.projects.length,
                    itemBuilder: (context, index) => SwiperImages(
                          index: controller.index,
                        )),
              ),
              // const SizedBox(width: 10,),
              !controller.isFinalIndex
                  ? Expanded(
                    child: GestureDetector(
                        onTap: () {
                   
                          controller.isFinalIndex ? null : controller.swapRight();
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                  )
                  : const SizedBox(
                      width: 10,
                    ),
            ],
          )),
    );
  }
}
