import 'package:get/get.dart';
import 'dart:html' as html;

class AppController extends GetxController {
  String appUrl =
      "https://github.com/HarshilSutariya7777/AnimalPark/releases/download/1.0/AnimalPark.apk";
  String apkName = "AnimalPark.apk";

  Future downloadApk() async {
    try {
      final anchor = html.AnchorElement(href: appUrl)..download = apkName;
      html.document.body!.children.add(anchor);
      anchor.click();
      html.document.body!.children.remove(anchor);
    } catch (e) {
      print(e);
    }
  }
}
