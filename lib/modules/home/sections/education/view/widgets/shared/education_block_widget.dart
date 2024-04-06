import 'package:flutter/material.dart';

import '../../../../../../../core/constant/colors/app_colors.dart';
import '../../../model/education_model.dart';

class EducationBlockWidget extends StatelessWidget {
  const EducationBlockWidget(
      {super.key, required this.constraints, required this.education});
  final BoxConstraints constraints;
  final Education education;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth / 2.0 - 20.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => AppColors().goldLinearGradient,
            child: Text(education.period,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    )),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(education.description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppColors.kCaptionColor,
                    height: 1.5,
                  )),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
