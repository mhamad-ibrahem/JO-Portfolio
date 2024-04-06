import '../../../../model/project_model.dart';

MyWorkModel veto = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "Veto",
  gitHubLink: "",
  appStoreLink: "",
  playStoreLink: "",
  details:
      """Mobile application for android and ios using  back ground service tracking , fire base notifications , socket io , fire base otp ,
this app contain 4 roles LandRover & customer & guest & agent , you can add and buy and rent properties,
containing chat and tracking , i worked on this application with digital edge company ,application is not available on stores""",
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = [];
  for (int i = 1; i < 4; i++) {
    images.add("assets/images/digital_edge/veto/veto$i.webp");
  }
  return images;
}
