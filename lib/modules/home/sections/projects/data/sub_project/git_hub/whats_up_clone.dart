import '../../../model/project_model.dart';

MyWorkModel whatsUpClone = MyWorkModel(
  image: "assets/E-commerce.webp",
  name: "What's up clone",
  gitHubLink: "//github.com/mhamad-ibrahem/whats-up-clone",
  appStoreLink: "",
  playStoreLink: "",
  details:
      """It's just a chat app with socket io client and whats up design with blue color this app work on local host only, project link available on git hub down bellow. 
 """,
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = [];
  for (int i = 1; i < 5; i++) {
    images.add("assets/images/git_hub/whats_up/wahts$i.webp");
  }
  return images;
}
