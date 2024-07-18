import 'package:get/get.dart';
import 'package:todo_app/src/features/authentication/screens/create_account_screen/create_account_screen.dart';
import 'package:todo_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:todo_app/src/features/authentication/screens/signup_screen/signup_screen.dart';

import '../../screens/login_screen/login_screen.dart';

class WelcomeController extends GetxController {

 /* << --- Login Button -- >> */
  loginBtn() {
    Get.off(
      const LoginScreen(),
      duration: 0.5.seconds,
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
