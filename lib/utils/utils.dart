import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  static void navigateBack(
      {BuildContext? context,
      required String name,
      bool closeOverlay = false,
      String? result}) {
    Get.back(result: result, closeOverlays: closeOverlay);
  }

  static Future<dynamic>? navigateTo(
      BuildContext? context, String name, dynamic arg) {
    return Get.toNamed(name, arguments: arg, preventDuplicates: true);
  }

  static Future<dynamic>? navigateOffToNamed(
      BuildContext? context, String name, dynamic arg) {
    return Get.offAndToNamed(name, arguments: arg);
  }
}
