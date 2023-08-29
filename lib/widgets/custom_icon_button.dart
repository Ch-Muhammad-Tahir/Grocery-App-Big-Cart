import 'package:e_commerce_store_ui/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Color? backgroundColor;
  final VoidCallback onTab;
  final double radius;

  const CustomIconButton(
      {super.key, this.backgroundColor, this.radius = 0, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(radius),
      color: backgroundColor,
      child: InkWell(onTap: onTab, child: Image.asset(AppAssets.backArrow)),
    );
  }
}
