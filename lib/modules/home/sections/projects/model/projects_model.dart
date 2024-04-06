class ProjectsModel {
  final String projectId;
  final String projectName;
  final String projectLink;
  final String projectDesxription;
  final List<dynamic> projectImages;

  ProjectsModel({
    required this.projectId,
    required this.projectName,
    required this.projectLink,
    required this.projectDesxription,
    required this.projectImages,
  });
  factory ProjectsModel.fromJson(Map<String, dynamic> json) => ProjectsModel(
      projectId: json['id'],
      projectName: json['name'],
      projectLink: json['link'],
      projectDesxription: json['description'],
      projectImages: json['image_urls']);
}
