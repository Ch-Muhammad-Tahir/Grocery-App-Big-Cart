import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:e_commerce_store_ui/widgets/custom_icon_button.dart';
import 'package:e_commerce_store_ui/widgets/custom_size_box.dart';
import 'package:flutter/material.dart';

class CustomQualityButton extends StatelessWidget {
  const CustomQualityButton({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      width: double.infinity,
      height: screenSize * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: screenSize * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Add this line
                children: [
                  const CustomText(
                    text: "Quantity",
                    fontWeight: FontWeight.w300,
                    textColor: Colors.grey,
                  ),
                  CustomIconButton(
                    backgroundColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: CustomText(
                      text: "-",
                      textColor: Colors.lightGreen,
                      fontSize: screenSize * 0.1,
                    ),
                    onTab: () {},
                  ),
                ],
              ),
            ),
          ),
          CustomSizeBox(
            width: screenSize * 0.02,
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.all(screenSize * 0.03),
            child: CustomText(
              text: "3",
              //textColor: Colors.green,
              fontSize: screenSize * 0.06,
            ),
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize * 0.03),
              child: CustomIconButton(
                backgroundColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: CustomText(
                  text: "+",
                  textColor: Colors.lightGreen,
                  fontSize: screenSize * 0.1,
                ),
                onTab: () {},
              )),
          CustomSizeBox(
            width: screenSize * 0.02,
          ),
        ],
      ),
    );
  }
}
