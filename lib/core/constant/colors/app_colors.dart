import 'package:flutter/material.dart';
import 'sub_colors/gradient_colors.dart';
import 'sub_colors/grey_levels_color.dart';
import 'sub_colors/main_colors.dart';

class AppColors with MainColorsMixin, GradientColors, GreyLevelsColorMixin {
  static const Color secondaryColor = Color(0xffdcc77b);
  static const Color amberColor = Colors.amber;
 
  static const Color primaryColor =  Color(0xffFFD700);
  static const Color kBackgroundColor = Color(0xff1b1718);
  static const Color kDangerColor = Color(0xffcfbd78);
  static const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);
}
