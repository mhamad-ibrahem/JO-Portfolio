import 'package:flutter/material.dart';
import 'package:image_gradient/image_gradient.dart';
import 'package:portfolio/core/classes/url_luncher_method_type.dart';
import 'package:portfolio/core/helper/internet_functions/lunch_url.dart';
import 'package:portfolio/modules/home/sections/conatc_me/model/contact_me_model.dart';
import '../../../../../../../core/constant/colors/app_colors.dart';

class CustomContact extends StatelessWidget {
  const CustomContact({super.key, required this.model});
  final ContactMeModel model;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
            onTap: () {
              switch (model.name) {
                case 'Email':
                  UrlLuncher.launchURL(
                      url: model.value, method: UrlLuncherMethodType.email);
                  break;
                case 'Phone':
                  UrlLuncher.launchURL(
                      url: model.value, method: UrlLuncherMethodType.phoneCall);
                  break;
                case 'Whats up':
                  UrlLuncher.launchURL(
                      url: model.link, method: UrlLuncherMethodType.https);
                  break;
                default:
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ImageGradient(
                          image: Image.asset(
                            model.image,
                            color: AppColors().white,
                            height: 40,
                            width: 40,
                          ),
                          gradient: AppColors().goldGradient),
                      // Image.asset(
                      //   model.image,
                      //   color: AppColors.primaryColor,
                      // ),
                      const SizedBox(
                        width: 10,
                      ),
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) =>
                            AppColors().goldLinearGradient,
                        child: Text(
                          model.name,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    model.value,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: AppColors.kCaptionColor,
                        height: 1.5,
                        fontSize: 17),
                  ),
                  const SizedBox(
                    height: 10.0,
                  )
                ],
              ),
            )));
  }
}
