import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/constant/size/app_size.dart';
import '../../../../../../core/helper/responsive/screen_helper.dart';
import '../../../../controller/home_controller.dart';
import '../widgets/skills_widget.dart';

class SkillSection extends GetView<HomeController> {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: const SkillsWidget(width: AppSize.kDesktopMaxWidth),
      tablet: const SkillsWidget(width:AppSize.kTabletMaxWidth),
      mobile: SkillsWidget(width:AppSize.getMobileMaxWidth(context)),
    );
  }
}

