import 'package:flutter/material.dart';

class SummaryTabletWidget extends StatelessWidget {
  const SummaryTabletWidget(
      {super.key, required this.text, required this.image});
  final Widget text;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: text,
        ),
        Expanded(
          child: image,
        )
      ],
    ));
  }
}
