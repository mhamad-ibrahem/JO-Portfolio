import 'package:flutter/material.dart';
import 'package:portfolio/core/constant/size/app_size.dart';
import 'package:portfolio/modules/home/sections/conatc_me/data/contact_me_data.dart';
import '../../../../../../core/constant/colors/app_colors.dart';
import 'shared/custom_contact.dart';

class ContactMeWidget extends StatelessWidget {
  const ContactMeWidget({super.key});

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
                  "CONTACT ME",
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
                  return AppSize.isMobileScreen(context: context)
                      ? Wrap(
                          spacing: 20.0,
                          runSpacing: 20.0,
                          children: contactMeList
                              .map(
                                (contact) => SizedBox(
                                  // width: constraints.maxWidth / 2.0 - 20.0,
                                  child: CustomContact(
                                    model: contact,
                                  ),
                                ),
                              )
                              .toList(),
                        )
                      : Row(
                          children: [
                            ...contactMeList
                                .map(
                                  (contact) => Expanded(
                                    child: CustomContact(
                                      model: contact,
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
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
