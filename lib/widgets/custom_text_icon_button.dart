import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:flutter/material.dart';

class CustomTextIconButton extends StatelessWidget {
  final Color? fontColor;
  final Widget? leftIcon;
  final bool showLeftIcon;
  final Widget? rightIcon;
  final bool showRightIcon;
  const CustomTextIconButton(
      {super.key,
      this.fontColor = Colors.white,
      this.showLeftIcon = false,
      this.showRightIcon = false,
      this.leftIcon,
      this.rightIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
                text: "Add To Cart",
                textColor: fontColor,
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
    );
  }
}
