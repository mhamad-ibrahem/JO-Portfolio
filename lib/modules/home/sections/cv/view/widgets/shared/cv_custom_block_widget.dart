import 'package:flutter/material.dart';
import 'package:image_gradient/image_gradient.dart';

import '../../../../../../../core/constant/colors/app_colors.dart';
import '../../../data/cv_data.dart';

class CvCustomBlockWidget extends StatelessWidget {
  const CvCustomBlockWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageGradient(
                image: Image.asset(designProcesses[index].imagePath,
                    color: AppColors().white, width: 40.0,height: 40,),
                gradient: AppColors().goldGradient),
            const SizedBox(
              width: 15.0,
            ),
            Expanded(
              child:  ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => AppColors().goldLinearGradient,
                child: Text(
                  designProcesses[index].title,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w800,
                       
                      ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          designProcesses[index].subtitle,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.kCaptionColor,
                height: 1.5,
                fontSize: 14.0,
              ),
        )
      ],
    );
  }
}
