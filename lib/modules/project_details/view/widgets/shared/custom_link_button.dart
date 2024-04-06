import 'package:flutter/material.dart';

import '../../../../../core/constant/colors/app_colors.dart';

class CustomLinkButton extends StatelessWidget {
  const CustomLinkButton({super.key, this.onPressed, required this.title});
final void Function()? onPressed;
final String title;
  @override
  Widget build(BuildContext context) {
    return  MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
              gradient: AppColors().goldGradient,
              borderRadius: BorderRadius.circular(16.0),
            ),
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: TextButton(
              onPressed: onPressed,
              child: Text(title,
              textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppColors.kBackgroundColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        );
  }
}