import 'package:e_commerce_store_ui/utils/app_assets.dart';
import 'package:e_commerce_store_ui/utils/app_constants.dart';
import 'package:e_commerce_store_ui/utils/helper_functions.dart';
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
      body: GridView.builder(
          padding: EdgeInsets.all(screenSize * 0.04),
          itemCount: AppConstants.categories.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          //physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: screenSize * 0.02,
              crossAxisSpacing: screenSize * 0.02),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(2)),
              child: Align(
                child: CategoryTileView(
                  onTab: () {
                    AppCommonFunctions.printLog("Hello");
                  },
                  category: AppConstants.categories[index],
                ),
              ),
            );
          }),
    );
  }
}
