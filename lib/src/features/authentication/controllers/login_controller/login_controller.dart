import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/features/authentication/screens/create_account_screen/create_account_screen.dart';
import 'package:todo_app/src/features/authentication/screens/home_screen/home_screen.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passController = TextEditingController();

  RegExp  validPass = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.[A-Z])");

  validUserName(String? userName) {
    if (!GetUtils.isUsername(userName ?? '')) {
      return 'UserName is not Valid';
    }
    return null;
  }

  validPassword(String? pass) {
    if(pass!.isEmpty){
      return 'Enter a password';
    }
    else if(!GetUtils.isLengthGreaterOrEqual(pass, 6)){
      return 'Password is short';
    }
    return null;
  }

  Future onLogin() async {
    if (formKey.currentState!.validate()) {
       Get.snackbar(
        'Proceed',
        'Account login successfully!',
        snackPosition: SnackPosition.TOP,
        colorText: whiteColor,
      );
       return Get.off(HomeScreen());
    }
    Get.snackbar(
      'Failed',
      'Account login failed!',
      snackPosition: SnackPosition.TOP,
      colorText: redColor,
    );
  }
}
