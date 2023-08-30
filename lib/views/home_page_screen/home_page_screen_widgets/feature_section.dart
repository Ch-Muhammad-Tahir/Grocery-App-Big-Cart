import 'package:e_commerce_store_ui/utils/app_constants.dart';
import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/views/product_details_screen/product_detail_screen.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/app_strings.dart';
import '../../../widgets/custom_size_box.dart';
import '../../../widgets/top_section_tile.dart';
import 'feature_product_tile_view.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Column(
      children: [
        TopSectionTile(
          onTab: () {},
          categoryName: AppString.featuredProducts,
          svgImagePath: AppAssets.rightIcon,
        ),
        CustomSizeBox(
          height: screenSize * 0.04,
        ),
        GridView.builder(
            // padding: EdgeInsets.all(screenSize * 0.17),
            itemCount: AppConstants.products.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.67,
                crossAxisSpacing: screenSize * 0.04,
                mainAxisSpacing: screenSize * 0.04),
            itemBuilder: (context, index) {
              return FeatureProductTileView(
                onTabAdd: () {},
                onTabFavorite: () {},
                onTabSubtract: () {},
                onTabImage: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                              product: AppConstants.products[index])));
                },
                product: AppConstants.products[index],
              );
            }),
      ],
    );
  }
}
