import 'package:flutter/material.dart';

class HeaderItem {
  final String title;
  final VoidCallback onTap;
  final bool isButton;
  final double offset;
   bool isHover;

  HeaderItem({
    required this.title,
    required this.onTap,
    this.isButton = false,
    required this.offset,
    this.isHover =false,
  });
}
