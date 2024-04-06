import 'package:flutter/material.dart';

import '../widgets/project_images.dart';
import '../widgets/project_informations.dart';
import '../widgets/project_links.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectImages(),
          ProjectInformation(),
          ProjectLinks(),
          SizedBox(height: 30,),
        ],
      ),
    ));
  }
}
