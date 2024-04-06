import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/classes/url_luncher_method_type.dart';
import 'package:portfolio/core/helper/internet_functions/lunch_url.dart';
import '../../controller/project_details_controller.dart';
import 'shared/custom_link_button.dart';

class ProjectLinks extends StatelessWidget {
  const ProjectLinks({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectDetailsController controller = Get.find();
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        if (controller.projectsModel.appStoreLink.isNotEmpty)
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CustomLinkButton(
                    title: 'App Link On App Store',
                    onPressed: () {
                      UrlLuncher.launchURL(
                          url: controller.projectsModel.appStoreLink,
                          method: UrlLuncherMethodType.https);
                    },
                  ),
                ),
              ],
            ),
          ),
        const SizedBox(
          width: 10,
        ),
        if (controller.projectsModel.playStoreLink.isNotEmpty)
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CustomLinkButton(
                    title: 'App Link On Play Store',
                    onPressed: () {
                      log("links is ${controller.projectsModel.playStoreLink}");
                      UrlLuncher.launchURL(
                          url: controller.projectsModel.playStoreLink,
                          method: UrlLuncherMethodType.https);
                    },
                  ),
                ),
              ],
            ),
          ),
        const SizedBox(
          width: 10,
        ),
        if (controller.projectsModel.gitHubLink.isNotEmpty)
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CustomLinkButton(
                    title: 'Project Link On GitHub',
                    onPressed: () {
                      UrlLuncher.launchURL(
                          url: controller.projectsModel.gitHubLink,
                          method: UrlLuncherMethodType.https);
                    },
                  ),
                ),
              ],
            ),
          ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
