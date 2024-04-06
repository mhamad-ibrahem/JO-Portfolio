import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/colors/app_colors.dart';
import '../../shared/widgets/loading/loading_points.dart';

class CustomExitButton extends StatelessWidget {
  const CustomExitButton({
    super.key,
    this.color,
    this.radius,
    this.onTap,
    this.isLoading = false,
    this.iconSize, this.padding,
  });
  final Color? color;
  final double? radius;
  final void Function()? onTap;
  final bool isLoading;
  final double? iconSize;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            Get.back();
          },
      child: CircleAvatar(
        radius: radius ?? 20,
        backgroundColor: color ?? AppColors().red.withOpacity(0.7),
        child: isLoading
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: padding ?? 3),
                child: const LoadingPoint(),
              )
            : Center(
                child: Icon(
                  Icons.close,
                  size: iconSize,
                  color: AppColors().white,
                ),
              ),
      ),
    );
  }
}
