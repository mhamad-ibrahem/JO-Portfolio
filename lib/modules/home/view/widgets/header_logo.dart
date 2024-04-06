import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/core/routes/routes_imports.dart';
import 'package:portfolio/modules/home/controller/home_controller.dart';

import 'sub_widget/header_logo.dart';
import 'sub_widget/header_row.dart';




// mobile header
Widget buildMobileHeader() {
  HomeController controller = Get.find();
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HeaderLogo(),
          GestureDetector(
            onTap: () {
              log("open drawer");
           controller.scaffoldKey.currentState?.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 28.0,
            ),
          )
        ],
      ),
    ),
  );
}

// Lets plan for mobile and smaller width screens
Widget buildHeader() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: HeaderLogo()),
        HeaderRow(),
      ],
    ),
  );
}
