import 'package:e_commerce_store_ui/utils/app_assets.dart';
import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:flutter/material.dart';

class WelcomeImagePortionWidget extends StatelessWidget {
  const WelcomeImagePortionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Stack(
      children: [
        Container(
          height: screenSize * 1.35,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.welcomePageImage),
                  fit: BoxFit.fill)),
        )
      ],
    );
  }
}
