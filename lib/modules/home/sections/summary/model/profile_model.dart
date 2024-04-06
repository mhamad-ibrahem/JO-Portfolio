class ProfileModel {
  final String profileAwards;
  final String profileImage;
  final String profileClient;
  final String profileProject;
  final String profileExperience;
  final String profileNumber;
  final String profileWhatsNum;
  final String profileEmail;
  final String profileAddress;
  final String profileId;
  final String profileYear;
  final String cvLink;
  final String profileContact;

  ProfileModel({
    required this.profileAwards,
    required this.profileImage,
    required this.profileClient,
    required this.profileProject,
    required this.profileExperience,
    required this.profileNumber,
    required this.profileWhatsNum,
    required this.profileEmail,
    required this.profileAddress,
    required this.profileId,
    required this.profileYear,
    required this.cvLink,
    required this.profileContact,
  });
  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        profileAwards: json['profile_awards'],
        profileImage: json['profile_image'],
        profileClient: json['profile_client'],
        profileProject: json['profile_project'],
        profileExperience: json['profile_experience'],
        profileNumber: json['profile_number'],
        profileWhatsNum: json['profile_whats_num'],
        profileEmail: json['profile_email'],
        profileAddress: json['profile_address'],
        profileId: json['profile_id'],
        profileYear: json['profile_year'],
        cvLink: json['cv_link'],
        profileContact: json['profile_contact'],
      );
}
