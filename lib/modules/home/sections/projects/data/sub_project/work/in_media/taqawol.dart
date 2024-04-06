import '../../../../model/project_model.dart';

MyWorkModel taqawol = MyWorkModel(
  image: "assets/E-commerce.png",
  name: "Taqawol",
  gitHubLink: "",
  appStoreLink: "",
  playStoreLink: "//play.google.com/store/apps/details?id=com.threedots.taqawol",
  details:
      """Mobile application for android and ios using getx and api WordPress with guest mode and payment card pay
 ,this app is a multi vendor e-commerce selling buildings products , with office service for choose products to your building ,
 i worked on this app with in media company , this app available on play store. 
""",
  imageList:  getAllImages(),
);

List<String> getAllImages() {
  List<String> images = [];
  for (int i = 1; i < 9; i++) {
    images.add("assets/images/in_media/taqawol/taqawol$i.webp");
  }
  return images;
}
