import 'package:flutter/material.dart';
import '../../../../../../core/constant/size/app_size.dart';
import '../../../../../../core/helper/responsive/screen_helper.dart';
import '../widgets/responsive/summary_labtop_widget.dart';
import '../widgets/responsive/summary_mobile_widget.dart';
import '../widgets/responsive/summary_tablet_widget.dart';
import '../widgets/summary_info.dart';
import '../widgets/start_image.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppSize.screenWidth(context: context) * 0.12),
      child: Column(
        children: [
          //  SizedBox(
          //   height:AppSize.isMobileScreen(context: context)? 40: 100.0,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: const ScreenHelper(
                  desktop: SummaryLaptopWidget(
                    text: SummaryInfo(),
                    image: StartImage(),
                  ),
                  tablet: SummaryTabletWidget(
                    text: SummaryInfo(),
                    image: StartImage(),
                  ),
                  mobile: SummaryMobileWidget(
                    text: SummaryInfo(),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
