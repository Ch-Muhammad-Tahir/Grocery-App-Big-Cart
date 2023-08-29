import 'package:e_commerce_store_ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomePageTopSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final String suffixIcon;
  const HomePageTopSearchBar(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.prefixIcon,
      required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: Image.asset(suffixIcon),
          hintText: hintText,
          fillColor: AppColors.topSearchBarColor,
          filled: true,
          border: const UnderlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
