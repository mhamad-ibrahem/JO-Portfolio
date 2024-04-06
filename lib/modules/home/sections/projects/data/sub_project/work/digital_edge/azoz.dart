import '../../../../model/project_model.dart';

MyWorkModel azoz = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "AZOZ",
  gitHubLink: "",
  appStoreLink: "//apps.apple.com/jm/app/azoz/id6475219708",
  playStoreLink: "//play.google.com/store/apps/details?id=com.starttech.azoz",
  details:
      """Mobile application for android and ios using getx , socket io , google maps , fire base notifications ,
this app contain 2 roles for customer and service provider , provider can add services and change orders status ,
customer can buy products , i worked on this application with digital edge company ,application is available on play store and app store""",
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = [];
  for (int i = 1; i < 9; i++) {
    images.add("assets/images/digital_edge/azoz/azoz$i.webp");
  }
  return images;
}
