import 'package:get/get.dart';
import 'package:portfolio/modules/project_details/controller/project_details_controller.dart';

class ProjectDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProjectDetailsController());
  }
}
