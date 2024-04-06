  import '../../../model/project_model.dart';

MyWorkModel taxi=  MyWorkModel(
    image: "assets/E-commerce.webp",
    name: "Taxi app",
    gitHubLink: "//github.com/mhamad-ibrahem/taxi-app",
    appStoreLink: "",
    playStoreLink: "",
    details:
       """This is a just ui taxi app with flutter getx state management and hive local storage its only ui app source code on git hub is available down bellow.""",
    imageList:getAllImages(),
  );

  List<String> getAllImages() {
  List<String> images = ["assets/images/git_hub/taxi/taxi_main.webp"];
  for (int i = 1; i < 8; i++) {
    images.add("assets/images/git_hub/taxi/taxi$i.webp");
  }
  return images;
}
