import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';
import 'package:todo_app/src/features/authentication/screens/home_screen/home_screen.dart';

import '../../screens/onboarding_screen/onboarding_screen.dart';
import '../../screens/signup_screen/signup_screen.dart';

class LoginController extends GetxController {


  /* <<< -- SignUp Button */
  signUpBtn() {
    Get.off(
      const SignUpScreen(),
      duration: 0.5.seconds,
    );
  }

  /* Back Arrow Button */
  backBtn() {
    Get.off(
      const OnBoardingScreen(),
    );
  }
}
