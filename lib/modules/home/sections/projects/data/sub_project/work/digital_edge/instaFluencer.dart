import '../../../../model/project_model.dart';

MyWorkModel instaFluencer = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "InstaFluencer",
  gitHubLink: "",
  appStoreLink: "//apps.apple.com/th/app/instafluencer/id1665428787",
  playStoreLink: "//play.google.com/store/apps/details?id=com.starttech.instafluencer",
  details:
      """Mobile application for android and ios using getx , socket io , fire base notifications , social media login ,
this app contain 2 roles for fluencer and business , business can hire fluencers , add jobs ,
this app contain 3 languages arabic , english and turkish, i worked on this application with digital edge company ,application is available on play store and app store
""",
  imageList: getAllImages(),
);


List<String> getAllImages() {
  List<String> images = ["assets/images/digital_edge/insta_fluencer/insta_fluencer_main.webp"];
  for (int i = 1; i < 6; i++) {
    images.add("assets/images/digital_edge/insta_fluencer/insta_fluencer$i.webp");
  }
  return images;
}