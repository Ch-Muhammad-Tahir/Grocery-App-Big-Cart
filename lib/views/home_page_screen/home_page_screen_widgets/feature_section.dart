import 'package:e_commerce_store_ui/utils/media_query.dart';
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
            itemCount: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: screenSize * 0.70,
                crossAxisSpacing: screenSize * 0.04,
                mainAxisSpacing: screenSize * 0.04),
            itemBuilder: (context, index) {
              return FeatureProductTileView(isFavorite: true);
            }),
      ],
    );
  }
}
