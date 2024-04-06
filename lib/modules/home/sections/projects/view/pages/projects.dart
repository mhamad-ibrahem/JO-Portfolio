import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../../core/helper/responsive/screen_helper.dart';
import '../../controller/project_controller.dart';
import '../widgets/project_body.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyWorkController());
    return ScreenHelper(
      desktop: WorkBody(
        height: Get.height * 0.5,
      ),
      tablet: WorkBody(
        height: Get.height * 0.5,
      ),
      mobile: WorkBody(
        height: Get.height * 0.35,
      ),
    );
  }
}
