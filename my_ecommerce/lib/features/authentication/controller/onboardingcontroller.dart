import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Loginscreen.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///Variables
  final pagecontroller = PageController();
  //current state of the current page index
  Rx<int> currentPageIndex = 0.obs;

  //Update Current Index when Page Scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  //jump to the specific dot selected page
  void dotNavigatorClick(index) {
    currentPageIndex.value = index;
    pagecontroller.jumpTo(index);
  }

  //update currentindex and jump to the next page
  void nextpage() {
    if (currentPageIndex.value == 2) {
      Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pagecontroller.jumpToPage(page);
    }
  }

  //update current index and jump to the last page
  void skippage() {
    currentPageIndex.value = 2;
    pagecontroller.jumpToPage(2);
  }
}
