import 'package:animal_park_web/Config/ResponsiveLayout.dart';
import 'package:animal_park_web/Pages/MobileHomePage.dart';
import 'package:animal_park_web/Pages/webHomePage.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileHomePage(),
      web: WebHomePage(),
    );
  }
}
