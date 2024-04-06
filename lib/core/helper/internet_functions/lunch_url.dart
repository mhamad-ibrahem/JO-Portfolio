import 'dart:developer';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/pop_up/toast_snack_bar.dart';
import '../../classes/url_luncher_method_type.dart';

class UrlLuncher {
  static Future<void> launchURL(
      {required String url, required UrlLuncherMethodType method}) async {
    try {
      final Uri uri = Uri(scheme: selectedMethod(method: method), path: url);
      final ri =Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(method ==UrlLuncherMethodType.https? ri: uri, mode: LaunchMode.externalApplication);
      } else {
        AppToasts.errorToast("Failed to lunch".tr);
        throw "cant lunch url";
      }
    } catch (e) {
      log('$e');
    }
  }

  static String selectedMethod({required UrlLuncherMethodType method}) {
    String selectedMethod = '';
    switch (method) {
      case UrlLuncherMethodType.email:
        selectedMethod = 'mailto';
        return selectedMethod;
      case UrlLuncherMethodType.phoneCall:
        selectedMethod = 'tel';
        return selectedMethod;
      case UrlLuncherMethodType.sms:
        selectedMethod = 'sms';
        return selectedMethod;
      case UrlLuncherMethodType.https:
        selectedMethod = 'https';
        return selectedMethod;
      default:
        selectedMethod = 'https';
        return selectedMethod;
    }
  }
}
