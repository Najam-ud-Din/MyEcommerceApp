import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtility {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setstatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: color,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  static dynamic isLandscapeOrientation(BuildContext context) {
    MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0.0;
  }

  static bool isTablet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.shortestSide >= 600;
  }

  static bool isPhone(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.shortestSide < 600;
  }

  static void setfullScreen(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  static double getscreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getscreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getstatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getpixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static double getBottomNavigationBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getkeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;

    return viewInsets.bottom;
  }

  static Future<bool> iskeyboardVisible(BuildContext context) async {
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom > 0.0;
  }

  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () {
      HapticFeedback.vibrate();
    });
  }

  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void hidestatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static void showstatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  static Future<bool> hasIntenetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static void launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
