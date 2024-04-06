import 'package:flutter/material.dart';

import '../../../../../../../core/constant/size/app_size.dart';

class SummaryMobileWidget extends StatelessWidget {
  const SummaryMobileWidget({super.key, required this.text});
final Widget text;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: AppSize.getMobileMaxWidth(context),
      ),
      width: double.infinity,
      child: text,
    );
  }
}
