
  import '../../../../model/project_model.dart';

MyWorkModel tdh=  MyWorkModel(
    image: "assets/E-commerce.png",
    name: "TDH Team Stream",
    gitHubLink: "",
    appStoreLink: "//apps.apple.com/pl/app/team-stream/id6472895524",
    playStoreLink: "//play.google.com/store/apps/details?id=com.starttech.tdh&hl=en&gl=US",
    details:
      """Mobile application for android and ios using getx  , fire base notifications , socket io ,
this app a hotel management system with a lot of roles , you can login as hotel manager and add users and see orders and add rooms and meals...... ,
you can login as housekeeper and start cleaning rooms with timer to set cleaning time and their are to many other roles each one have a permissions and  job to do ,
i worked on this application with digital edge company , application is available on play store and app store""",
    imageList: getAllImages(),
  );

   List<String> getAllImages() {
  List<String> images = ["assets/images/digital_edge/tdh/tdh_main.webp"];
  for (int i = 1; i < 27; i++) {
    images.add("assets/images/digital_edge/tdh/tdh$i.webp");
  }
  return images;
}