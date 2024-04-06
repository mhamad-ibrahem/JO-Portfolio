import '../../../model/project_model.dart';

MyWorkModel news = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "News App",
  gitHubLink: "//github.com/mhamad-ibrahem/News-app",
  appStoreLink: "",
  playStoreLink: "",
  details:
      """This is just a sample news app using flutter getx state management &http package & dartz & Hive local storage, you can see news around word and filter it by category or country or by date and add it to local favorite and download image and share it and use finger type to login project link down bellow. """,
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = ["assets/images/git_hub/news/news_main.webp"];
  for (int i = 1; i < 10; i++) {
    images.add("assets/images/git_hub/news/news$i.webp");
  }
  return images;
}
