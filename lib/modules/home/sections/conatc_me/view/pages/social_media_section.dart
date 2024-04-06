import 'package:flutter/material.dart';

import '../../../../../../core/constant/size/app_size.dart';
import '../../../../../../core/helper/responsive/screen_helper.dart';
import '../widgets/social_media_widget.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSize.screenWidth(context: context) * 0.13),
      child: const ScreenHelper(
        desktop: SocialMediaWidget(),
        tablet: SocialMediaWidget(),
        mobile: SocialMediaWidget(),
      ),
    );
  }
}