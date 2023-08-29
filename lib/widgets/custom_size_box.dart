import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;
  const CustomSizeBox({super.key, this.child, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}
