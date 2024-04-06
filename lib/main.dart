import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'core/constant/colors/app_colors.dart';
import 'core/constant/routes/app_routes.dart';
import 'core/localization/locallization.dart';
import 'core/routes/routes.dart';
import 'core/services/app_services.dart';
import 'core/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppColors().black));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return 
    GetMaterialApp(
      title: "JO Portfolio",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightsTheme,
      initialRoute: AppRoutes.splashRoute,
      translations: Localization(),
      locale:const Locale("en"),
      getPages: routes,
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.resize(2460, name: "4K"),
        ],
      ),
    );
  }
}
