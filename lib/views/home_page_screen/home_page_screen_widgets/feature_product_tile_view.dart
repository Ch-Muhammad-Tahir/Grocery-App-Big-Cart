import 'package:e_commerce_store_ui/utils/app_colors.dart';
import 'package:e_commerce_store_ui/utils/helper_functions.dart';
import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:e_commerce_store_ui/widgets/custom_icon_button.dart';
import 'package:e_commerce_store_ui/widgets/custom_size_box.dart';
import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import '../../../widgets/custom_text_button.dart';

class FeatureProductTileView extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onTabImage;
  final VoidCallback onTabFavorite;
  final VoidCallback onTabSubtract;
  final VoidCallback onTabAdd;
  const FeatureProductTileView(
      {super.key,
      required this.product,
      required this.onTabImage,
      required this.onTabFavorite,
      required this.onTabSubtract,
      required this.onTabAdd});

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
                      color:
                          product.isNew ? Colors.amber.shade100 : Colors.white,
                      child: CustomText(
                        text: "new",
                        textColor: product.isNew ? Colors.orange : Colors.white,
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
                  splashColor: Colors.transparent,
                  onTap: onTabImage,
                  child: Column(
                    children: [
                      Image.asset(
                        product.productImage,
                        height: screenWidth * 0.2,
                        width: screenWidth * 0.2,
                      ),
                      SizedBox(
                        height: screenWidth * 0.04,
                      ),
                      CustomText(
                        text: "\$${product.productPrice}",
                        fontSize: screenWidth * 0.04,
                        textColor: Colors.green,
                      ),
                      CustomText(
                        text: product.productName,
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                      CustomText(
                        text: product.productWeight,
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
                  height: 0,
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
                        onTab: onTabSubtract,
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
                        onTab: onTabFavorite,
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
                    splashColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    onTab: onTabFavorite,
                    child: product.isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border_rounded,
                          ),
                  )),
            ],
          )),
    );
  }
}
