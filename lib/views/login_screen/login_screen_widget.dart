import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:flutter/material.dart';

import '../../widgets/image_welcom_stack.dart';

class LoginScreenWidget extends StatelessWidget {
  const LoginScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //WelcomeImageStack(),
            Positioned(
              bottom: 10,
              child: Container(
                color: Colors.amber,
                height: screenSize * 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
