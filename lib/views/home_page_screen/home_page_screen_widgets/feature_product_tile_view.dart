import 'package:e_commerce_store_ui/utils/app_colors.dart';
import 'package:e_commerce_store_ui/utils/helper_functions.dart';
import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:e_commerce_store_ui/widgets/custom_icon_button.dart';
import 'package:e_commerce_store_ui/widgets/custom_size_box.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_text_button.dart';

class FeatureProductTileView extends StatelessWidget {
  final bool isFavorite;

  const FeatureProductTileView({super.key, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    double screenWidth = GetScreenSize.getScreenWidth(context);
    return Material(
      color: Colors.white,
      child: SizedBox(
          width: screenWidth * 0.47,
          child: Stack(
            children: [
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: screenWidth * 0.062,
                      width: screenWidth * 0.12,
                      color: Colors.amber.shade100,
                      child: CustomText(
                        text: "new",
                        textColor: Colors.orange,
                        fontSize: screenWidth * 0.038,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.01,
                ),
                InkWell(
                  onTap: () {
                    AppCommonFunctions.printLog("Center Pressed");
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/aocado-2 1.png",
                      ),
                      SizedBox(
                        height: screenWidth * 0.04,
                      ),
                      CustomText(
                        text: "\$8.00",
                        fontSize: screenWidth * 0.04,
                        textColor: Colors.green,
                      ),
                      CustomText(
                        text: "Fresh Fruit",
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                      const CustomText(
                        text: "1.5 lbs",
                        textColor: Colors.grey,
                        fontWeight: FontWeight.w300,
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextButton(
                        onTab: () {
                          AppCommonFunctions.printLog("- Pressed");
                        },
                        text: "-",
                        fontSize: screenWidth * 0.08,
                        textColor: Colors.green,
                      ),
                      CustomText(
                        text: "1",
                        fontSize: screenWidth * 0.05,
                      ),
                      CustomTextButton(
                        fontSize: screenWidth * 0.08,
                        onTab: () {
                          AppCommonFunctions.printLog("+ Pressed");
                        },
                        text: "+",
                        textColor: Colors.green,
                      ),
                    ],
                  ),
                )
              ]),
              Positioned(
                  right: 10,
                  top: 10,
                  child: CustomIconButton(
                    backgroundColor: Colors.transparent,
                    child: isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                    onTab: () {
                      print("Heart");
                    },
                  )),
            ],
          )),
    );
  }
}
