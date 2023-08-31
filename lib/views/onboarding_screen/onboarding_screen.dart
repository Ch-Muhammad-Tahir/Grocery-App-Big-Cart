import 'package:e_commerce_store_ui/utils/app_colors.dart';
import 'package:e_commerce_store_ui/views/login_screen/login_screen_widget.dart';
import 'package:e_commerce_store_ui/widgets/custom_text_icon_button.dart';
import 'package:flutter/material.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_strings.dart';
import '../../utils/media_query.dart';
import '../../views/onboarding_screen/onboarding_screen/on_boarding_tile_view.dart';

class OnBoardingScreenWidget extends StatelessWidget {
  const OnBoardingScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Scaffold(
        backgroundColor: AppColors.whiteBackground,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenSize * 1.8,
                child: PageView.builder(
                  itemCount: AppConstants.onBoardingImages.length,
                  itemBuilder: (context, index) {
                    return OnBoardingScreenTile(
                        image: AppConstants.onBoardingImages[index],
                        title: AppConstants.onBoardingTitle[index],
                        subtitle: AppString.onBoardingSubTitle);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenSize * 0.04),
                child: CustomTextIconButton(
                  onTab: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreenWidget()));
                  },
                  text: AppString.btnGetStarted,
                  elevation: 10,
                ),
              ),
            ],
          ),
        ));
  }
}
