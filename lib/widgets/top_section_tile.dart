import 'package:e_commerce_store_ui/utils/media_query.dart';
import 'package:e_commerce_store_ui/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopSectionTile extends StatelessWidget {
  final String svgImagePath;
  final String categoryName;
  final VoidCallback onTab;
  const TopSectionTile(
      {super.key,
      required this.svgImagePath,
      required this.categoryName,
      required this.onTab});

  @override
  Widget build(BuildContext context) {
    var screenSize = GetScreenSize.getScreenWidth(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: categoryName,
          fontSize: screenSize * 0.04,
          fontWeight: FontWeight.w500,
        ),
        GestureDetector(onTap: onTab, child: SvgPicture.asset(svgImagePath)),
      ],
    );
  }
}
