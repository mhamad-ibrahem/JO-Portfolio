import '../../../../model/project_model.dart';

MyWorkModel mhg = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "MHGBoutique",
  gitHubLink: "",
  appStoreLink: "//apps.apple.com/dk/app/mhgboutique/id6463312590",
  playStoreLink:
      "//play.google.com/store/apps/details?id=com.starttech.mhgboutique&pli=1",
  details:
      """Mobile application for android and ios using getx , google maps , fire base notifications , guest mode
this app is a multi vendors and multi countries e-commerce for selling perfumes for MHGBoutique company ,
this app has a beautiful ui screens and has multiple payment methods and map contain all MHGBoutique stores locations ,also this app has a
coupon system and points for discount, i worked on this application with digital edge company ,application is available on play store and app store""",
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = ["assets/images/digital_edge/mhg/mhg_main.webp"];
  for (int i = 1; i < 14; i++) {
    images.add("assets/images/digital_edge/mhg/mhg$i.webp");
  }
  return images;
}
