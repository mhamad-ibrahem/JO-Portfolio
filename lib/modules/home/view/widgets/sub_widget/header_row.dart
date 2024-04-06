import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart' as responsive;

import '../../../../../core/constant/colors/app_colors.dart';
import '../../../../../core/constant/size/app_size.dart';
import '../../../controller/home_controller.dart';
import '../../../data/tap_bar_data.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return responsive.ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        responsive.Condition.largerThan(name: responsive.MOBILE),
      ],
      child: GetBuilder<HomeController>(
        builder: (controller) => Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSize.screenWidth(context: context) * 0.05),
          child: Row(
            children: [
              ...headerItems
                  .map((item) => MouseRegion(
                        onEnter: (val) {
                          item.isHover = true;
                          controller.update();
                        },
                        onExit: (val) {
                          item.isHover = false;
                          controller.update();
                        },
                        child: InkWell(
                          borderRadius: BorderRadius.circular(8.0),
                          onTap: () {
                            controller.scrollTo(item.offset);
                          },
                          child: GetBuilder<HomeController>(
                            builder: (controller) => Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  gradient: item.isHover
                                      ? AppColors().goldGradient
                                      : null),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Text(
                                item.title,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
