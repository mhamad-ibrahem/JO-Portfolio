import '../../../../model/project_model.dart';

MyWorkModel lift24 = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "24lift",
  gitHubLink: "",
  appStoreLink: "",
  playStoreLink:
      "//play.google.com/store/apps/details?id=org.nerva.twentyfourlift&pli=1",
  details:
      """Mobile application for android and ios using getx , google maps , fire base notifications ,
this app is a multi vendors  e-commerce for selling cars products like batteries and provide recovery and moving furniture services,
this app has 2 roles person or company you can buy product or request service by choose your location on map ,also this app has a
coupon system and points for discount, i worked on this application with FSIT company ,application is available on play store""",
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = [];
  for (int i = 1; i < 12; i++) {
    images.add("assets/images/fsit/24lift/24lift$i.webp");
  }
  return images;
}
