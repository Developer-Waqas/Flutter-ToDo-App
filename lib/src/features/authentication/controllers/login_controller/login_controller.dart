import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';
import 'package:todo_app/src/features/authentication/screens/home_screen/home_screen.dart';

import '../../screens/onboarding_screen/onboarding_screen.dart';
import '../../screens/signup_screen/signup_screen.dart';

class LoginController extends GetxController {
  /* <<<< --- Form Key --- >>>>  */
  final formKey = GlobalKey<FormState>();

  /* Hide Password */
  RxBool isHidden = true.obs;

  /* <<< --- Email Validator Func --- >>> */
  validEmail(String? email) {
    if (email!.isEmpty) {
      return loginText11;
    } else if (!GetUtils.isEmail(email ?? '')) {
      return loginText12;
    }
    return null;
  }

  /* <<< --- Password Validator Func --- >>> */
  validPassword(String? pass) {
    if (pass!.isEmpty) {
      return loginText13;
    } else if (!GetUtils.isLengthGreaterOrEqual(pass, 6)) {
      return loginText14;
    }
    return null;
  }

  void togglePasswordView() {
    isHidden.value = !isHidden.value;
  }

  /* <<< --- Login Button Func --- >>> */
  Future onLogin() async {
    if (formKey.currentState!.validate()) {
      /* Validate Snack Bar */
      Get.snackbar(
        'Proceed',
        'Account login successfully!',
        snackPosition: SnackPosition.TOP,
        colorText: whiteColor,
      );
      return Get.off(const HomeScreen());
    }

    /* Not Validate Snack Bar */
    Get.snackbar(
      'Failed',
      'Account login failed!',
      snackPosition: SnackPosition.TOP,
      colorText: redColor,
    );
  }

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
