import 'package:flutter/material.dart';
import 'package:portfolio/core/constant/size/app_size.dart';
import 'package:portfolio/modules/home/sections/conatc_me/data/social_media_data.dart';
import 'package:portfolio/modules/home/sections/conatc_me/view/widgets/shared/custom_socail_media.dart';

import '../../../../../../core/classes/url_luncher_method_type.dart';
import '../../../../../../core/helper/internet_functions/lunch_url.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: AppSize.screenHeight(context: context) * 0.1,
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    children: [
                      ...socialMediaList
                          .map(
                            (socialMedia) => Expanded(
                              child: CustomSocialMediaWidget(
                                onTap: () {
                                  switch (socialMedia.name) {
                                    case "whats up":
                                      UrlLuncher.launchURL(
                                          url: socialMedia.link,
                                          method: UrlLuncherMethodType.https);
                                      break;
                                    case "email":
                                      UrlLuncher.launchURL(
                                          url: socialMedia.link,
                                          method: UrlLuncherMethodType.email);
                                      break;
                                    case "github":
                                      UrlLuncher.launchURL(
                                          url: socialMedia.link,
                                          method: UrlLuncherMethodType.https);
                                      break;
                                    case "facebook":
                                      UrlLuncher.launchURL(
                                          url: socialMedia.link,
                                          method: UrlLuncherMethodType.https);
                                      break;
                                    case "instagram":
                                      UrlLuncher.launchURL(
                                          url: socialMedia.link,
                                          method: UrlLuncherMethodType.https);
                                      break;
                                    case "linkedin":
                                      UrlLuncher.launchURL(
                                          url: socialMedia.link,
                                          method: UrlLuncherMethodType.https);
                                      break;
                                    default:
                                  }
                                },
                                model: socialMedia,
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  );
                },
              ),
              SizedBox(
                height: AppSize.screenHeight(context: context) * 0.1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
