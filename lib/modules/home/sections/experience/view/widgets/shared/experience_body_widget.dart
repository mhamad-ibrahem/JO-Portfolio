import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/sections/experience/model/experience_model.dart';

import '../../../../../../../core/constant/colors/app_colors.dart';

class ExperienceBodyWidget extends StatelessWidget {
  const ExperienceBodyWidget(
      {super.key, required this.constraints, required this.experience});
  final BoxConstraints constraints;
  final ExperienceModel experience;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth / 2.0 - 20.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            experience.companyName,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: AppColors.kDangerColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            experience.period,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
          ),
          // const SizedBox(
          //   height: 5.0,
          // ),
          // Text(
          //   experience.description,
          //   maxLines: 4,
          //   overflow: TextOverflow.ellipsis,
          //   style: Theme.of(context).textTheme.displaySmall?.copyWith(
          //         color: AppColors.kCaptionColor,
          //         height: 1.5,
          //       ),
          // ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
