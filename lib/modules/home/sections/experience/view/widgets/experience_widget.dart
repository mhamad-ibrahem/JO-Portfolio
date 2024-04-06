import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/sections/experience/data/experience_data.dart';
import '../../../../../../core/constant/colors/app_colors.dart';
import 'shared/experience_body_widget.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => AppColors().goldLinearGradient,
                child: Text(
                  "EXPERIENCE",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 30.0,
                        height: 1.3,
                      ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: experienceList
                        .map(
                          (experience) => ExperienceBodyWidget(
                            experience: experience,
                            constraints: constraints,
                          ),
                        )
                        .toList(),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
