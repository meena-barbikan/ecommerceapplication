import 'package:ecommerceapplication/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboadringController extends GetxController {
  static OnboadringController get instace => Get.find();
  // varaibles
  final onboardingcontroller = PageController();
  RxInt currentiindex = 0.obs;

  void dotCliked(index) {
    currentiindex.value = index;
    onboardingcontroller.jumpTo(index);
  }

  void updatepageindicator(index) {
    currentiindex.value = index;
  }

  void nextpage() {
    if (currentiindex.value == 2) {
      Get.offAll(const loginView());
    } else {
      int page = currentiindex.value + 1;
      onboardingcontroller.jumpToPage(page);
    }
  }

  void skippage() {
    currentiindex.value == 2;
    onboardingcontroller.jumpToPage(2);
  }
}
