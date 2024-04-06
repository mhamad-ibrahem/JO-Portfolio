import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_gradient/image_gradient.dart';
import 'package:portfolio/core/constant/colors/app_colors.dart';
import 'package:portfolio/modules/home/sections/conatc_me/model/social_media_model.dart';

import '../../../../../controller/home_controller.dart';

class CustomSocialMediaWidget extends StatelessWidget {
  const CustomSocialMediaWidget({super.key, required this.model, this.onTap});
  final SocialMediaModel model;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetBuilder<HomeController>(
            builder:(controller)=> Transform.translate(
              offset: Offset(0, controller.animation!.value),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: onTap,
                  child: ImageGradient(
                        image: Image.asset(model.image,color: AppColors().white,width: 50,height: 50,),
                        gradient: AppColors().goldGradient),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}
