import '../../../model/project_model.dart';

MyWorkModel eCommerce = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "E-commerce App",
  gitHubLink: "//github.com/mhamad-ibrahem/E-comerce",
  appStoreLink: "",
  playStoreLink: "",
  details:
      """E-commerce app with flutter using getx state management & http & hive has a cart & favorite & categories & AUTH & product detail & google map & check out pages connected with api & fire base notifications source code is available on git hub link down bellow.""",
  imageList:getAllImages(),
);

List<String> getAllImages() {
  List<String> images = ["assets/images/git_hub/e_commerce/e-commerce_main.webp"];
  for (int i = 1; i < 4; i++) {
    images.add("assets/images/git_hub/e_commerce/e-commerce$i.webp");
  }
  return images;
}
