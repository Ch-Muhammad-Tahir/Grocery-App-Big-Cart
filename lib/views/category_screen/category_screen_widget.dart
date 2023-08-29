import 'package:e_commerce_store_ui/utils/app_assets.dart';
import 'package:e_commerce_store_ui/utils/app_constants.dart';
import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/views/home_page_screen/home_page_screen_widgets/category_tile_view.dart';
import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:flutter/material.dart';

class CategoryScreenWidget extends StatelessWidget {
  const CategoryScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CustomText(text: "Categories"),
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
      body: Column(
        children: [
          GridView.builder(
              padding: EdgeInsets.all(screenSize * 0.07),
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return Container(
                  //padding:
                  //  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2)),
                  child: CategoryTileView(
                    category: AppConstants.categories[0],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
