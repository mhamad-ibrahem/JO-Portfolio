import 'dart:developer';

import 'package:portfolio/core/constant/size/app_size.dart';
import 'package:portfolio/core/routes/routes_imports.dart';

import '../../sections/projects/data/projects_data.dart';
import '../../sections/projects/model/project_model.dart';

class ProjectsController extends GetxController {
  bool isFirstIndex = true;
  bool isFinalIndex = false;
  int index = 0;
  List<MyWorkModel> projects = myWorkList;

  swapRight() {
    index++;
    if (index > 0) {
      isFirstIndex = false;
      isFinalIndex = false;
    }
    if (AppSize.isMobileScreenWithOutContext()) {
      if (index + 1 >= projects.length) {
        isFinalIndex = true;
      }
    } else {
      if (index + 2 >= projects.length) {
        isFinalIndex = true;
      }
    }
    if (index == 0) {
      isFirstIndex = true;
    }
    log("first : $index  second : ${projects.length}  is final $isFinalIndex");
    update();
  }

  swapLeft() {
    if (index < 0) {
      index = 0;
    } else {
      index--;
    }
    if (index > 0) {
      isFirstIndex = false;
      isFinalIndex = false;
    }
    if (AppSize.isMobileScreenWithOutContext()) {
      if (index + 1 >= projects.length) {
        isFinalIndex = true;
      }
    } else {
      if (index + 2 >= projects.length) {
        isFinalIndex = true;
      }
    }
    if (index == 0) {
      isFirstIndex = true;
    }
    log("first : $index  second : ${projects.length} is final $isFinalIndex");
    update();
  }
}
