import 'package:e_commerce_store_ui/utils/app_assets.dart';
import 'package:e_commerce_store_ui/utils/app_colors.dart';
import 'package:e_commerce_store_ui/utils/app_strings.dart';
import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/views/onboarding_screen/onboarding_screen/custom_circle.dart';
import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:e_commerce_store_ui/widgets/custom_size_box.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const OnBoardingScreenTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Container(
      color: AppColors.whiteContainer,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: screenSize * 1.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    image,
                  ),
                )),
              ),
              const Positioned(
                  bottom: -230, child: CustomCircle(diameter: 440)),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize * 0.05),
            child: Column(
              children: [
                CustomText(
                  text: title,
                  fontSize: screenSize * 0.08,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                ),
                CustomSizeBox(
                  height: screenSize * 0.03,
                ),
                CustomText(
                  text: subtitle,
                  fontSize: screenSize * 0.038,
                  textAlign: TextAlign.center,
                  textColor: AppColors.greyText,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
