import '../../../../model/project_model.dart';

MyWorkModel quranVoice = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "Quran Voice",
  gitHubLink: "",
  appStoreLink: "",
  playStoreLink: "",
  details:
      """Mobile application for android and ios using getx and audio players,this app contain google ads and facebook ads ,you can listen to quran voice and collect points for seeing ads
i worked on this app with protico company , this app is not available on stores""",
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = [];
  for (int i = 1; i < 4; i++) {
    images.add("assets/images/protico/quran/quran$i.webp");
  }
  return images;
}
