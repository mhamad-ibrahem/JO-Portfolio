import 'package:flutter/material.dart';
import 'package:portfolio/core/constant/assets/app_assets.dart';
import 'package:portfolio/core/constant/colors/app_colors.dart';
import 'package:portfolio/core/constant/size/app_size.dart';
import 'package:portfolio/core/routes/routes_imports.dart';
import 'package:portfolio/widgets/dividers/custom_horizontal_divider.dart';

import '../../../../widgets/buttons/custom_delete_button.dart';
import '../../data/tap_bar_data.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: AppColors().black,
      child: SafeArea(
        child: Container(
          height: AppSize.screenHeight(context: context),
          width: AppSize.screenWidth(context: context) * 0.6,
          decoration: BoxDecoration(gradient: AppColors().goldGradient),
          child: ListView(
            children: [
              Container(
                color: AppColors.kBackgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppAssets().logo,
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10, ),
                      decoration:
                          BoxDecoration(gradient: AppColors().goldGradient,shape: BoxShape.circle),
                      child: const CustomExitButton(
                        color: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 20),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: headerItems.length,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: GestureDetector(
                    onTap: (){
                      Get.back();
                      controller.scrollTo(headerItems[index].offset);
                    },
                    child: Text(
                      headerItems[index].title,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: AppColors.kBackgroundColor,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) =>
                    const CustomHorizontalDivider(
                  color: AppColors.kBackgroundColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
