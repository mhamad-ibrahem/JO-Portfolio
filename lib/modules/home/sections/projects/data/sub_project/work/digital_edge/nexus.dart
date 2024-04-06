import '../../../../model/project_model.dart';

MyWorkModel nexus = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "Nexus",
  gitHubLink: "",
  appStoreLink: "//apps.apple.com/us/app/nexus-client-app/id6448869771",
  playStoreLink: "//apps.apple.com/us/app/nexus-client-app/id6448869771",
  details:
           """Mobile application for android and ios using getx , google maps , fire base notifications , socket io ,
this app is a service app for nexus company employees that they can have health insurance and many service 
, i worked on this application with digital edge company ,application is available on play store and app store""",
  imageList: getAllImages(),
);
  List<String> getAllImages() {
  List<String> images = ["assets/images/digital_edge/nexus/nexus_main.webp"];
  for (int i = 1; i < 7; i++) {
    images.add("assets/images/digital_edge/nexus/nexus$i.webp");
  }
  return images;
}