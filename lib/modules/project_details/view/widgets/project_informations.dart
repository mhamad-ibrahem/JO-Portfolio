import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/constant/colors/app_colors.dart';
import 'package:portfolio/core/constant/size/app_size.dart';
import '../../controller/project_details_controller.dart';

class ProjectInformation extends StatelessWidget {
  const ProjectInformation({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectDetailsController controller = Get.find();
    return Container(
      width: AppSize.screenWidth(context: context),
      padding: EdgeInsets.symmetric(
          horizontal: AppSize.screenWidth(context: context) * 0.05,
          vertical: 20),
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: AppColors.kDangerColor))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => AppColors().goldLinearGradient,
            child: Text(
              controller.projectsModel.name,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Description :",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColors().white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            controller.projectsModel.details,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColors.kCaptionColor),
          ),
        ],
      ),
    );
  }
}
