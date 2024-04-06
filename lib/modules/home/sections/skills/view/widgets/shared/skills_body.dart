import 'package:flutter/material.dart';

import '../../../../../../../core/constant/colors/app_colors.dart';
import '../../../model/skills_model.dart';

class SkillsBody extends StatelessWidget {
  const SkillsBody({super.key, required this.skill});
final Skill skill;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          Expanded(
            flex: int.parse(skill.percentage.toString()),
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              alignment: Alignment.centerLeft,
              height: 38.0,
              color: Colors.white,
              child: Text(skill.skill,style: Theme.of(context).textTheme.displaySmall?.copyWith(color: AppColors.kBackgroundColor),),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            // remaining (blank part)
            flex: 100 - int.parse(skill.percentage.toString()),
            child: const Divider(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            "${skill.percentage}%",
            style: TextStyle(
              color: AppColors().white,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
