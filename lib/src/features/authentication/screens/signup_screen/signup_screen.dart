import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';

import '../../../../common_widgets/custom_form_field/custom_form_field.dart';
import '../../../../common_widgets/custom_icon_button/custom_icon_button.dart';
import '../../../../constants/app_colors/app_colors.dart';
import '../welcome_screen/welcome_screen.dart';
import 'signup_header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBgColor,
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
        leading: Align(
          alignment: Alignment.topLeft,
          child: CustomIconButton(
            buttonIcon: CupertinoIcons.back,
            buttonPressed: () {
              Get.off(
                const WelcomeScreen(),
              );
            },
            buttonColor: whiteColor,
            buttonSize: 35,
          ),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* SignUp Header Widget */
            const SignUpHeaderWidget(),
            const SizedBox(
              height: 20,
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    signUpText2,
                    style: onBoardingSubTitleStyle,
                  ),
                  const SizedBox(height: 5,),
                  CustomFormField(
                    keyboardType: TextInputType.emailAddress,
                    inputTextStyle: onBoardingSubTitleStyle,
                    hintText: loginText3,
                    hintTextStyle: hintTextStyle,
                    inputBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: borderColor,
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
