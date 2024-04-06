class MyWorkModel {
  final String name;
  final String details;
  final String image;
  final List imageList;
  final String playStoreLink;
  final String appStoreLink;
  final String gitHubLink;
  bool isHovering;

  MyWorkModel({
    required this.name,
    required this.details,
    required this.image,
    required this.imageList,
    required this.playStoreLink,
    required this.appStoreLink,
    required this.gitHubLink,
    this.isHovering=false
  });
}
