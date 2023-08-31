import 'package:e_commerce_store_ui/utils/app_assets.dart';

import 'package:e_commerce_store_ui/utils/app_constants.dart';
import 'package:e_commerce_store_ui/views/category_screen/category_screen_widget.dart';
import 'package:e_commerce_store_ui/views/home_page_screen/home_page_screen_widgets/category_tile_view.dart';
import 'package:e_commerce_store_ui/widgets/custom_size_box.dart';

import '../../../utils/app_strings.dart';
import '../../../utils/helper_functions.dart';
import '../../../utils/media_query.dart';

import 'package:flutter/material.dart';

import '../../../widgets/top_section_tile.dart';
import '../../products_screen/product_screen_widget.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Column(
      children: [
        TopSectionTile(
          onTab: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryScreenWidget()));
          },
          categoryName: AppString.categoriesLabel,
          svgImagePath: AppAssets.rightIcon,
        ),
        CustomSizeBox(
          height: screenSize * 0.07,
        ),
        SizedBox(
          height: screenSize * 0.3,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryTileView(
                    onTab: () {
                      AppCommonFunctions.printLog("Hello");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductScreenWidget(
                                    category:
                                        AppConstants.categories[index].name,
                                  )));
                    },
                    category: AppConstants.categories[index]);
              },
              separatorBuilder: (context, index) {
                return CustomSizeBox(width: screenSize * 0.02);
              },
              itemCount: AppConstants.categories.length),
        )
      ],
    );
  }
}
