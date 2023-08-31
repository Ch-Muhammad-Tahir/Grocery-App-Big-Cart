
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? splashColor;
  final VoidCallback onTab;
  final double radius;
  final Widget child;
  const CustomIconButton(
      {super.key,
      this.backgroundColor,
      this.radius = 0,
      required this.onTab,
      required this.child,
      this.splashColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(radius),
      color: backgroundColor,
      child: InkWell(splashColor: splashColor, onTap: onTab, child: child),
    );
  }
}
