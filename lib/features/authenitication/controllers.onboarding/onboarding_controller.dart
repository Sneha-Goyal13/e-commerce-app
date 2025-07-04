import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

//update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage =GetStorage();
      storage.write('IsFirstTime', false);
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //update current index and jump to last page
  void skipPage() {
    Get.offAll(const LoginScreen());
  }
}
