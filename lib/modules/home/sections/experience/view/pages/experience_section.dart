import 'package:flutter/material.dart';
import '../../../../../../core/constant/size/app_size.dart';
import '../../../../../../core/helper/responsive/screen_helper.dart';
import '../widgets/experience_widget.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSize.screenWidth(context: context) * 0.13),
      child: const ScreenHelper(
        desktop: ExperienceWidget(),
        tablet: ExperienceWidget(),
        mobile: ExperienceWidget(),
      ),
    );
  }
}
