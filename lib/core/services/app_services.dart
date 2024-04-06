import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../firebase_options.dart';
import '../localization/controller/localization_controller.dart';

class AppServices extends GetxService {
  //i use it for initialize all data i need instead of initialize it in the main function
  static LocalizationController? localizationController;
  Future<AppServices> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await GetStorage.init();
    localizationController = await Get.put(LocalizationController());
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => AppServices().init());
}
