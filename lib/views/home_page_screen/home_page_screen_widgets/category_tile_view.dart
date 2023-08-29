import 'package:e_commerce_store_ui/models/category_model.dart';

import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:e_commerce_store_ui/widgets/custom_size_box.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryTileView extends StatelessWidget {
  final CategoryModel category;
  const CategoryTileView({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: category.backGroundColor,
              borderRadius: BorderRadius.circular(45)),
          child: SvgPicture.asset(
            category.svgImagepath,
            height: screenSize * 0.1,
            width: screenSize * 0.1,
          ),
        ),
        CustomSizeBox(
          height: screenSize * 0.02,
        ),
        CustomText(
          text: category.name,
          textColor: Colors.grey.shade700,
        )
      ],
    );
  }
}
