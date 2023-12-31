import 'package:e_commerce_store_ui/models/product_model.dart';

import 'package:e_commerce_store_ui/utils/app_colors.dart';
import 'package:e_commerce_store_ui/utils/app_strings.dart';
import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/views/product_details_screen/product_screen_widget/custom_quality_button.dart';

import 'package:e_commerce_store_ui/widgets/custom_size_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../widgets/customText.dart';
import '../../widgets/custom_text_icon_button.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductModel product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  double rating = 4.5;

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Scaffold(
      backgroundColor: AppColors.containerBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            CustomSizeBox(
              height: screenSize * 0.1,
            ),
            Image.asset(
              "assets/images/graps.png",
              height: screenSize * 0.6,
              width: screenSize * 0.6,
            ),
            CustomSizeBox(
              height: screenSize * 0.1,
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.containerBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.all(screenSize * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "\$2.22",
                          fontSize: screenSize * 0.035,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.green,
                        ),
                        const Icon(Icons.favorite_border_outlined)
                      ],
                    ),
                    CustomText(
                      text: "Organic Lemons",
                      fontSize: screenSize * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "1.15 lbs",
                          fontSize: screenSize * 0.035,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.grey.shade600,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "4.5",
                          fontSize: screenSize * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomSizeBox(width: screenSize * 0.015),
                        RatingBar(
                          initialRating: 4.5,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          ignoreGestures: true,
                          itemSize: screenSize * 0.04,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                            full: const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            half: const Icon(Icons.star_half,
                                color: Colors.amber),
                            empty: const Icon(
                              Icons.star_border_outlined,
                              color: Colors.amber,
                            ),
                          ),
                          onRatingUpdate: (value) {},
                        ),
                      ],
                    ),
                    CustomSizeBox(
                      height: screenSize * 0.02,
                    ),
                    CustomText(
                        textAlign: TextAlign.justify,
                        fontSize: screenSize * 0.028,
                        textOverflow: TextOverflow.ellipsis,
                        maxLine: 7,
                        text:
                            "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing"),
                    CustomSizeBox(
                      height: screenSize * 0.05,
                    ),
                    CustomQualityButton(),
                    CustomSizeBox(
                      height: screenSize * 0.06,
                    ),
                    CustomTextIconButton(
                      text: AppString.btnAddToCard,
                      onTab: () {},
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
