class Skill {
  final String skill;
  final int percentage;

  Skill({
    required this.skill,
    required this.percentage,
  });
}

class SkillsModel {
  final String skillId;
  final String skillName;
  final String skillPercent;

  SkillsModel(
      {required this.skillId,
      required this.skillName,
      required this.skillPercent});
  factory SkillsModel.fromJson(Map<String, dynamic> json) => SkillsModel(
      skillId: json['skill_id'],
      skillName: json['skill_name'],
      skillPercent: json['skill_percent']);
}
