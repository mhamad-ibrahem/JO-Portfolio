import 'package:flutter/material.dart';
import '../../../../../../core/constant/colors/app_colors.dart';
import '../../data/education_data.dart';
import 'shared/education_block_widget.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key});

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
                  "EDUCATION",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 28.0,
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
                    children: educationList
                        .map(
                          (education) => EducationBlockWidget(
                            education: education,
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
