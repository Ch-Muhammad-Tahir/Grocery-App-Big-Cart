import 'package:e_commerce_store_ui/utils/app_constants.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/media_query.dart';
import '../../../views/home_page_screen/home_page_screen_widgets/category_section.dart';
import '../../../views/home_page_screen/home_page_screen_widgets/top_search_bar.dart';
import '../../../widgets/custom_size_box.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'home_page_screen_widgets/feature_section.dart';

class HomePageScreenWidget extends StatelessWidget {
  HomePageScreenWidget({super.key});
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenSize * 0.04),
        child: Column(children: [
          SizedBox(
            height: AppBar().preferredSize.height,
          ),
          HomePageTopSearchBar(
            controller: searchController,
            hintText: AppString.searchKeywordHint,
            prefixIcon: Icons.search,
            suffixIcon: AppAssets.searchFilterIcon,
          ),
          CustomSizeBox(
            height: screenSize * 0.04,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                CarouselSlider.builder(
                  itemCount: AppConstants.slideImages.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return Image.asset(AppConstants.slideImages[index]);
                  },
                  options: CarouselOptions(
                    //height: dynamicSize * 0.8,
                    enableInfiniteScroll: true,
                    initialPage: 0,

                    viewportFraction: 0.7,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(seconds: 3),
                  ),
                ),
                const CategorySection(),
                CustomSizeBox(height: screenSize * 0.03),
                const FeatureSection(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
