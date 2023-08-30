import 'package:e_commerce_store_ui/models/category_model.dart';
import 'package:e_commerce_store_ui/models/product_model.dart';
import 'package:e_commerce_store_ui/utils/app_assets.dart';
import 'package:e_commerce_store_ui/utils/app_colors.dart';
import 'package:e_commerce_store_ui/utils/app_strings.dart';

class AppConstants {
  static List<CategoryModel> categories = [
    CategoryModel(
        name: AppString.vegetables,
        svgImagepath: AppAssets.vegetableIcon,
        backGroundColor: AppColors.vegetableColor),
    CategoryModel(
        name: AppString.fruits,
        svgImagepath: AppAssets.fruitsIcon,
        backGroundColor: AppColors.fruitsColor),
    CategoryModel(
        name: AppString.beverages,
        svgImagepath: AppAssets.beverageIcon,
        backGroundColor: AppColors.beveragesColor),
    CategoryModel(
        name: AppString.grocery,
        svgImagepath: AppAssets.groceryIcon,
        backGroundColor: AppColors.groceryColor),
    CategoryModel(
        name: AppString.edibleOil,
        svgImagepath: AppAssets.oilIcon,
        backGroundColor: AppColors.oilColor),
    CategoryModel(
        name: AppString.household,
        svgImagepath: AppAssets.houseHoldIcon,
        backGroundColor: AppColors.householdColor),
  ];

  static List<ProductModel> products = [
    ProductModel.add(
        productName: AppString.pineapple,
        productImage: AppAssets.pineapple,
        productPrice: AppString.pineapplePrice,
        productWeight: "1.0 lbs",
        isFavorite: false,
        isNew: true),
    ProductModel.add(
        productName: AppString.freshPeach,
        productImage: AppAssets.peach,
        productPrice: "15.00",
        productWeight: "1.5 lbs",
        isFavorite: true,
        isNew: false),
    ProductModel.add(
        productName: AppString.roccoli,
        productImage: AppAssets.roccoli,
        productPrice: AppString.roccoliPrice,
        productWeight: "2.0 lbs",
        isFavorite: false,
        isNew: false),
    ProductModel.add(
        productName: AppString.pineapple,
        productImage: AppAssets.pineapple,
        productPrice: AppString.pineapplePrice,
        productWeight: "1.0 lbs",
        isFavorite: false,
        isNew: false),
    ProductModel.add(
        productName: AppString.roccoli,
        productImage: AppAssets.roccoli,
        productPrice: AppString.roccoliPrice,
        productWeight: "2.0 lbs",
        isFavorite: true,
        isNew: true),
  ];

  static List<String> slideImages = [
    AppAssets.image1,
    AppAssets.image2,
    AppAssets.image3,
    AppAssets.image4,
    AppAssets.image2,
  ];
}
