import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';

class SplashController extends GetxController {
  @override
  /* <<< ---- Initial State for Navigation B/W Screens ---- >>> */
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Timer(const Duration(seconds: 3), () {
      Get.off(const OnBoardingScreen());
    });
  }
}
