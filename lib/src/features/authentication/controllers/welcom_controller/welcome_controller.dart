import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/features/authentication/screens/create_account_screen/create_account_screen.dart';
import 'package:todo_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';

import '../../screens/login_screen/login_screen.dart';

class WelcomeController extends GetxController {
  loginBtn() {
    Get.off(
      const LoginScreen(),
      curve: Curves.easeIn,
      duration: 0.5.seconds,
    );
  }

  createAccountBtn() {
    Get.off(
      const CreateAccountScreen(),
      curve: Curves.easeIn,
      duration: 0.5.seconds,
    );
  }

  backBtn() {
    Get.off(
      const OnBoardingScreen(),
      curve: Curves.easeOut,
      duration: 1.seconds,
    );
  }
}
