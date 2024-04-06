import '../../../model/project_model.dart';

MyWorkModel foodDelivery = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "Food-Delivery",
  gitHubLink: "//github.com/mhamad-ibrahem/Food-Delivery",
  appStoreLink: "",
  playStoreLink: "",
  details:
      """It's just a mobile application with flutter and getx to order foods , project link on git hub is down below""",
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = ["assets/images/git_hub/delivery/delivery_main.webp"];
  for (int i = 1; i < 2; i++) {
    images.add("assets/images/git_hub/delivery/delivery$i.webp");
  }
  return images;
}
