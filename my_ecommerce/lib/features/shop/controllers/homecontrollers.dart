import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Homecontrollers extends GetxController {
  static Homecontrollers get instance => Get.find();

  final carousalcurrentindex = 0.obs;

  void updatepageindicator(index) {
    carousalcurrentindex.value = index;
  }
}
