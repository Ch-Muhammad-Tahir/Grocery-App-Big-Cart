import 'package:e_commerce_store_ui/utils/app_assets.dart';
import 'package:e_commerce_store_ui/utils/app_colors.dart';
import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:e_commerce_store_ui/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class WelcomeImageStack extends StatelessWidget {
  const WelcomeImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppAssets.welcomePageImage,
          //height: screenSize * 1.4,
        ),
        Positioned(
            top: 31,
            left: 20,
            child: CustomIconButton(
              backgroundColor: Colors.transparent,
              onTab: () {},
            )),
        Positioned(
            top: 26,
            child: CustomText(
              text: "Welcome",
              fontSize: screenSize * 0.045,
              fontWeight: FontWeight.w500,
              textColor: AppColors.whiteText,
            )),
      ],
    );
  }
}
