import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:flutter/material.dart';

import '../../widgets/welcom_image_portion.dart';

class LoginScreenWidget extends StatelessWidget {
  const LoginScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Scaffold(
      body: Column(
        children: [WelcomeImagePortionWidget()],
      ),
    );
  }
}
