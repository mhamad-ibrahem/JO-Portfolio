import 'package:flutter/material.dart';
import '../../../../../../core/constant/size/app_size.dart';
import '../../../../../../core/helper/responsive/screen_helper.dart';
import '../widgets/education_widget.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSize.screenWidth(context: context) * 0.13),
      child: const ScreenHelper(
        desktop: EducationWidget(),
        tablet: EducationWidget(),
        mobile: EducationWidget(),
      ),
    );
  }
}
