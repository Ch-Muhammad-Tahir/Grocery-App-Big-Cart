import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final VoidCallback onTab;
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.onTab,
      this.fontSize,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTab,
        child: CustomText(
          text: text,
          fontSize: fontSize,
          textColor: textColor,
        ));
  }
}
