import 'package:e_commerce_store_ui/views/home_page_screen/homepage_screen.dart';
import 'package:e_commerce_store_ui/views/login_screen/login_screen_widget.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Poppins"),
    home: HomePageScreenWidget(),
  ));
}
