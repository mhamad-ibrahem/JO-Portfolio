import '../../../model/project_model.dart';

MyWorkModel fireBaseNotes = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "FireBase Notes app",
  gitHubLink: "//github.com/mhamad-ibrahem/Notes",
  appStoreLink: "",
  playStoreLink: "",
  details:
      """Its just a flutter app with fire base services like fire base auth with otp and google account and email and fire store and fire storage and real time chat with emoji picker project link down bellow.
 """,
  imageList: getAllImages(),
);

List<String> getAllImages() {
  List<String> images = ["assets/images/git_hub/notes/notes_main.webp"];
  for (int i = 1; i < 5; i++) {
    images.add("assets/images/git_hub/notes/notes$i.webp");
  }
  return images;
}

