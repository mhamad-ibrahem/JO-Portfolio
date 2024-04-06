import 'package:flutter/material.dart';

mixin GradientColors {
  //Gradient colors
  Gradient get goldGradient => const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFFae8646),
          Color(0xFFe8d688),
        ],
      );

  Shader get goldLinearGradient => const LinearGradient(
        colors: <Color>[Color(0xFFae8646), Color(0xFFe8d688)],
      ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
}
