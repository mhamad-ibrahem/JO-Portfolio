import '../../../../model/project_model.dart';

MyWorkModel digitalEdgeTask = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "Digital Edge Task",
  gitHubLink: "//github.com/mhamad-ibrahem/Task",
  appStoreLink: "",
  playStoreLink: "",
  details:
      """This is a just a task from digital edge company with flutter using http & getx & dart z & hive, source code is also available, check belows
""",
  imageList:  getAllImages(),
);

 List<String> getAllImages() {
  List<String> images = ["assets/images/digital_edge/task/company_task_main.png"];
  for (int i = 1; i < 3; i++) {
    images.add("assets/images/digital_edge/task/company_task$i.png");
  }
  return images;
}