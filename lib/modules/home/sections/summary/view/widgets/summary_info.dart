import 'package:flutter/material.dart';
import 'package:portfolio/core/classes/url_luncher_method_type.dart';
import 'package:portfolio/core/helper/internet_functions/lunch_url.dart';
import '../../../../../../core/constant/colors/app_colors.dart';

class SummaryInfo extends StatelessWidget {
  const SummaryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => AppColors().goldLinearGradient,
          child: Text(
            "Mobile Application Engineer",
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          "Mhamad\nIbrahem",
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: AppColors().white,
              fontSize: 40,
              fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text("Flutter Developer , based in  Syria",
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: AppColors.kCaptionColor,
                  fontSize: 15,
                )),
        const SizedBox(
          height: 10.0,
        ),
        Wrap(
          children: [
            Text("Need a full custom mobile application?",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppColors.kCaptionColor, fontSize: 15, height: 1.5)),
            GestureDetector(
              onTap: () {
                UrlLuncher.launchURL(
                    url: "//wa.me/+963966769532",
                    method: UrlLuncherMethodType.https);
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(" Got a project? Let's talk.",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors().white, fontSize: 15, height: 1.5)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
              gradient: AppColors().goldGradient,
              borderRadius: BorderRadius.circular(16.0),
            ),
            height: 48.0,
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: TextButton(
              onPressed: () {
                UrlLuncher.launchURL(
                    url: "//wa.me/+963966769532",
                    method: UrlLuncherMethodType.https);
              },
              child: Text("GET STARTED",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppColors.kBackgroundColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}
