import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/common_widgets/custom_form_field/custom_form_field.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';
import 'package:todo_app/src/features/authentication/screens/login_screen/login_screen.dart';

import '../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../common_widgets/custom_icon_button/custom_icon_button.dart';
import 'forgot_header_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                const LoginScreen(),
              );
              ;
            },
            buttonColor: whiteColor,
            buttonSize: 35,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /* Forgot Password header widget */
            const ForgotPasswordHeaderWidget(),
            const SizedBox(
              height: 5,
            ),

            /* <<< -- Email Form Field --- >>> */
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
            const SizedBox(
              height: 50,
            ),

            /* <<< --- Done Button -- >>> */
            Center(
              child: CustomButton(
                buttonTitle: forgotText3,
                buttonColor: primaryColor,
                buttonBorderRadius: 5,
                buttonTextStyle: onBoardingSubTitleStyle,
                buttonWidth: 327,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
