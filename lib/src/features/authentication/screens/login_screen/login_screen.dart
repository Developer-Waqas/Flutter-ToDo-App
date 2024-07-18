import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/common_widgets/custom_button/custom_button.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';
import 'package:todo_app/src/features/authentication/controllers/login_controller/login_controller.dart';
import 'package:todo_app/src/features/authentication/controllers/welcom_controller/welcome_controller.dart';
import 'package:todo_app/src/features/authentication/screens/login_screen/login_header_widget.dart';
import 'package:todo_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

import '../../../../common_widgets/custom_icon_button/custom_icon_button.dart';
import '../../../../constants/app_colors/app_colors.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*  <<< --- GetX Dependency Injection ---- >>>> */
    LoginController loginController = Get.put(LoginController());

    return Scaffold(
      backgroundColor: splashBgColor,
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
        leading: Align(
          alignment: Alignment.topLeft,
          child: CustomIconButton(
            buttonIcon: CupertinoIcons.back,
            buttonPressed: loginController.backBtn(),
            buttonColor: whiteColor,
            buttonSize: 35,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

             /* Login Header Widget */
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LoginHeaderWidget(),
                    const SizedBox(
                      height: 8,
                    ),
                    LoginForm(
                      loginController: loginController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),

              /* <<< ----- Don't have an Account Buttons ----- >>> */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    loginText7,
                    style: hintTextStyle,
                  ),
                  CustomButton(
                    buttonTitle: loginButtonText4,
                    buttonTextStyle: onBoardingSubTitleStyle,
                    buttonWidth: 148,
                    onPressed: loginController.signUpBtn(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
