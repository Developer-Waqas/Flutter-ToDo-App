import 'package:get/get.dart';

import '../../screens/login_screen/login_screen.dart';
import '../../screens/onboarding_screen/onboarding_screen.dart';
import '../../screens/signup_screen/signup_screen.dart';

class WelcomeController extends GetxController {

 /* << --- Login Button -- >> */
  loginBtn() {
    Get.off(
      const LoginScreen(),
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
