import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_constants.dart';
import '../../widgets/customText.dart';
import '../home_page_screen/home_page_screen_widgets/feature_product_tile_view.dart';
import '../product_details_screen/product_detail_screen.dart';

class ProductScreenWidget extends StatelessWidget {
  final String category;
  const ProductScreenWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomText(text: category),
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.black,
        actions: [
          Image.asset(
            AppAssets.searchFilterIcon,
            color: Colors.black,
          )
        ],
      ),
      body: GridView.builder(
          // padding: EdgeInsets.all(screenSize * 0.17),
          itemCount: AppConstants.products.length,
          shrinkWrap: true,
          //  physics: const NeverScrollableScrollPhysics(),
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
    );
  }
}
