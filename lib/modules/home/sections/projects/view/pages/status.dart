import 'package:flutter/material.dart';
import '../../../../../../core/constant/colors/app_colors.dart';
import '../../../../../../core/constant/size/app_size.dart';
import '../../../../../../core/helper/responsive/screen_helper.dart';
import '../../data/status_data.dart';

class PortfolioStatus extends StatelessWidget {
  const PortfolioStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ScreenHelper(
        desktop: _buildUi(AppSize.kDesktopMaxWidth, context),
        tablet: _buildUi(AppSize.kTabletMaxWidth, context),
        mobile: _buildUi(AppSize.getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return Wrap(children: [
      LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            alignment: WrapAlignment.center,
            children: status.map((status) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                alignment: Alignment.center,
                width: ScreenHelper.isMobile(context)
                    ? constraint.maxWidth / 2.0 - 20
                    : (constraint.maxWidth / 4.0 - 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(child: SizedBox()),
                    Text(
                      status.count,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 32.0,
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      status.text,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 16.0,
                            color: AppColors.kCaptionColor,
                          ),
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    ]);
  }
}
