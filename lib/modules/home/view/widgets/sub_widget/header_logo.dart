import 'package:flutter/material.dart';
import 'package:portfolio/core/constant/assets/app_assets.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {},
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(AppAssets().logo,width:100,height:100,fit: BoxFit.contain,))
        ),
      ),
    );
  }
}
