import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/modules/home/view/widgets/home_drawer.dart';
import '../../../../core/constant/size/app_size.dart';
import '../../sections/conatc_me/view/pages/contact_me_section.dart';
import '../../sections/conatc_me/view/pages/social_media_section.dart';
import '../../sections/cv/view/pages/vc_secation.dart';
import '../../sections/education/view/pages/education.dart';
import '../../sections/experience/view/pages/experience_section.dart';
import '../../sections/projects/view/pages/projects.dart';
import '../../sections/projects/view/pages/status.dart';
import '../../sections/skills/view/pages/skills_page.dart';
import '../../sections/summary/view/pages/summary_page.dart';
import '../../controller/home_controller.dart';
import '../widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer:AppSize.isMobileScreen(context: context)? const HomeDrawer():null,
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GetBuilder<HomeController>(
              builder: (controller) => Column(children: [
                const SizedBox(
                  height: 20.0,
                ),
                const TopBar(),
                Expanded(
                    child: ListView(
                        controller: controller.scrollController,
                        children: [
                      const SummaryPage(),
                      const SizedBox(
                        height: 40,
                      ),
                      const CvSection(),
                      const Projects(),
                      SizedBox(
                        height: AppSize.screenHeight(context: context) * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                AppSize.screenWidth(context: context) * 0.07,
                            vertical: 50),
                        child: const PortfolioStatus(),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const EducationSection(),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const SkillSection(),
                      SizedBox(
                        height: AppSize.screenHeight(context: context) * 0.08,
                      ),
                      const ExperienceSection(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const ContactMeSection(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const SocialMediaSection()
                    ]))
              ]),
            )));
  }
}
