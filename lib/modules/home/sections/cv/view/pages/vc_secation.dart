import 'package:flutter/material.dart';
import '../../../../../../core/constant/size/app_size.dart';
import '../../../../../../core/helper/responsive/screen_helper.dart';
import '../widgets/cv_widget.dart';

class CvSection extends StatelessWidget {
  const CvSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSize.screenWidth(context: context) * 0.12),
      width: double.infinity,
      child: const ScreenHelper(
        desktop: CvWidget(),
        tablet: CvWidget(),
        mobile: CvWidget(),
      ),
    );
  }
}
