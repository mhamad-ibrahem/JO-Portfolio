import '../../../model/project_model.dart';

MyWorkModel driver = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "Delivery-Driver",
  gitHubLink: "//github.com/mhamad-ibrahem/Driver-app",
  appStoreLink: "",
  playStoreLink: "",
  details:
      """This is a just delivery driver app with flutter getx state management and hive local storage with socket io client & image picker and google map with geolocator and poly line source code on git hub available down bellow.
""",
  imageList:getAllImages(),
);

List<String> getAllImages() {
  List<String> images = ["assets/images/git_hub/driver/driver_main.webp"];
  for (int i = 1; i < 6; i++) {
    images.add("assets/images/git_hub/driver/driver$i.webp");
  }
  return images;
}