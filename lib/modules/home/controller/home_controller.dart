import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/modules/home/controller/sub_controller/project_controller.dart';

class HomeController extends ProjectsController
    with GetSingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollDuration = const Duration(seconds: 1);
  ScrollController? scrollController;
  AnimationController? animatedController;
  Animation<double>? animation;
  int selectedSection = 0;
  bool isHover = false;
  double scrollVal = 0.0;
  List<double> scrollValues = [
    0.0,
    976,
    1656,
    2245,
    2684.1256984165734,
    2889.1256984165734
  ];
  hovering(bool value) {
    isHover = value;
    log("$isHover");
    update();
  }

  scrollTo(double value) {
    scrollVal = value;
    scrollController!.animateTo(value,
        duration: const Duration(seconds: 1), curve: Curves.easeIn);
    update();
  }

  @override
  void onInit() {
    scrollController = ScrollController(initialScrollOffset: scrollVal);
    scrollController!.addListener(() {
      log("scroll offset${scrollController!.offset}");
    });
    animatedController = AnimationController(
      duration: const Duration(milliseconds: 1300),
      value: 2,
      vsync: this,
    )..repeat(reverse: true);
    animation = Tween<double>(begin: 0, end: 15).animate(animatedController!)
      ..addListener(() {
        update();
      });
    super.onInit();
  }
  @override
  void dispose() {
   scrollController!.dispose();
   animatedController!.dispose();
    super.dispose();
  }
}
