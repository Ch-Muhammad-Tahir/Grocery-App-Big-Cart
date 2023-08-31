import 'package:flutter/material.dart';
import '../widgets/customText.dart';

class CustomTextIconButton extends StatelessWidget {
  final Color? fontColor;
  final Widget? leftIcon;
  final bool showLeftIcon;
  final Widget? rightIcon;
  final bool showRightIcon;
  final VoidCallback onTab;
  final double elevation;
  final double? height;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String text;
  const CustomTextIconButton(
      {super.key,
      this.fontColor = Colors.white,
      this.showLeftIcon = false,
      this.showRightIcon = false,
      this.leftIcon,
      this.rightIcon,
      required this.onTab,
      this.elevation = 0.0,
      this.height,
      this.width,
      required this.text,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: elevation,
      child: InkWell(
        onTap: onTab,
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(108, 197, 29, 1),
                Color.fromRGBO(174, 220, 129, 1)
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
          ),
          child: Row(
            children: [
              if (showLeftIcon && leftIcon != null) leftIcon!,
              if ((showLeftIcon && leftIcon == null) ||
                  (!showLeftIcon && !showRightIcon))
                const Spacer(),
              Align(
                alignment: Alignment.center,
                child: CustomText(
                  text: text,
                  textColor: fontColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              ),
              if (showRightIcon && rightIcon != null) rightIcon!,
              if ((showRightIcon && rightIcon == null) ||
                  (!showLeftIcon && !showRightIcon))
                const Spacer(),
              // Icon(Icons.abc),
            ],
          ),
        ),
      ),
    );
  }
}
