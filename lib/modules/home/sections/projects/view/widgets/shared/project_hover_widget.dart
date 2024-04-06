import 'package:flutter/material.dart';

import '../../../../../../../core/constant/colors/app_colors.dart';
import '../../../../../../../core/constant/size/app_size.dart';
import '../../../../../../project_details/view/widgets/shared/custom_link_button.dart';

class ProjectHoverWidget extends StatelessWidget {
  const ProjectHoverWidget({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: AppSize.screenHeight(context: context) * 0.5,
      width:AppSize.isMobileScreen(context: context)?AppSize.screenWidth(context: context)  : AppSize.screenWidth(context: context) * 0.4,
      color: AppColors().black.withOpacity(0.6),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColors().white),
          ),
          Center(
              child: CustomLinkButton(
            title: 'View Details',
            onPressed: onPressed ,
          )),
          const SizedBox()
        ],
      ),
    );
  }
}
