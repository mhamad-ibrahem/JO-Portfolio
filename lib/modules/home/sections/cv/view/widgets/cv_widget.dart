import 'package:flutter/material.dart';
import 'package:portfolio/core/classes/url_luncher_method_type.dart';
import 'package:portfolio/core/helper/internet_functions/lunch_url.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../../../core/constant/colors/app_colors.dart';
import '../../../../../../core/helper/responsive/screen_helper.dart';
import '../../data/cv_data.dart';
import 'shared/cv_custom_block_widget.dart';

class CvWidget extends StatelessWidget {
  const CvWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text("BETTER CODING,\nBETTER EXPERIENCES",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1.8,
                            fontSize: 18.0,
                          )),
                ),
                GestureDetector(
                  onTap: () {
                    UrlLuncher.launchURL(
                        url: "//www.mediafire.com/download/icpodqipsdjq5a5",
                        method: UrlLuncherMethodType.https);
                  },
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) =>
                          AppColors().goldLinearGradient,
                      child: Text(
                        "DOWNLOAD CV",
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0,
                                ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return ResponsiveGridView.builder(
                  padding: const EdgeInsets.all(0.0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  alignment: Alignment.topCenter,
                  gridDelegate: ResponsiveGridDelegate(
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    maxCrossAxisExtent: ScreenHelper.isTablet(context) ||
                            ScreenHelper.isMobile(context)
                        ? constraints.maxWidth / 2.0
                        : 250.0,
                    // Hack to adjust child height
                    childAspectRatio: ScreenHelper.isDesktop(context)
                        ? 1
                        : MediaQuery.of(context).size.aspectRatio * 1.5,
                  ),
                  itemCount: designProcesses.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CvCustomBlockWidget(
                      index: index,
                    );
                  },
                );
              },
            )
          ],
        )
      ],
    );
  }
}
