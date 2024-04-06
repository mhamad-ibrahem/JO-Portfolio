import '../../../../model/project_model.dart';

MyWorkModel tAndG = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "Thom & Gery",
  gitHubLink: "",
  appStoreLink: "",
  playStoreLink: "",
  details:
     """Mobile application for android and ios using getx , back ground service tracking , fire base notifications , socket io ,
this app contain 2 roles agent and customer , containing chat and tracking , i worked on this application with digital edge company ,application is not available on stores""",
  imageList: getAllImages(),
);
 List<String> getAllImages() {
  List<String> images = ["assets/images/digital_edge/t&g/t&g_main.webp"];
  for (int i = 1; i < 7; i++) {
    images.add("assets/images/digital_edge/t&g/t&g$i.webp");
  }
  return images;
}