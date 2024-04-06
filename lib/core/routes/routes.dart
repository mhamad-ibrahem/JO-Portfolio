import 'package:portfolio/modules/project_details/view/pages/projects_details_page.dart';

import '../../modules/home/binding/home_binding.dart';
import '../../modules/home/view/pages/home_page.dart';
import '../../modules/project_details/binding/project_details_binding.dart';
import '../constant/routes/app_routes.dart';
import 'routes_imports.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppRoutes.splashRoute,
      page: () => HomePage(),
      binding: HomeBinding(),),
  GetPage(
      name: AppRoutes.projectDetailsRoute,
      page: () => const ProjectDetailsPage(),
      binding: ProjectDetailsBinding(),),
];
