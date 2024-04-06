import '../../../model/project_model.dart';

MyWorkModel coffeeShop = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "Coffee Shop Task",
  gitHubLink: "//github.com/mhamad-ibrahem/coffee_shop_task",
  appStoreLink: "",
  playStoreLink: "",
  details: """It's just a sample ui task for  matrix company with flutter and getx, project link on git hub down bellow.""",
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = [];
  for (int i = 1; i < 3; i++) {
    images.add("assets/images/git_hub/coffee/coffee$i.webp");
  }
  return images;
}
