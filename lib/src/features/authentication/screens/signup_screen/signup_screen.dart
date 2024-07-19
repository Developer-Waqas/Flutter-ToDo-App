import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/common_widgets/custom_button/custom_button.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* SignUp Header Widget */

            const SignUpHeaderWidget(),
            const SizedBox(
              height: 30,
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    signUpText2,
                    style: onBoardingSubTitleStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomFormField(
                    keyboardType: TextInputType.emailAddress,
                    inputTextStyle: onBoardingSubTitleStyle,
                    hintText: signUpText3,
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
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              signUpText4,
              style: onBoardingSubTitleStyle,
            ),
            CustomFormField(
              hintText: signUpText5,
              hintTextStyle: hintTextStyle,
              keyboardType: TextInputType.emailAddress,
              inputBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              signUpText6,
              style: onBoardingSubTitleStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomFormField(
              hintTextStyle: hintTextStyle,
              hintText: signUpText7,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: borderColor,
                  width: 2,
                ),
              ),
              suffixIcon: GestureDetector(
                child: Icon(
                  Icons.visibility,
                  color: whiteColor,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                buttonTitle: signUpButtonText1,
                buttonTextStyle: onBoardingSubTitleStyle,
                buttonWidth: 327,
                buttonHeight: 48,
                buttonColor: primaryColor,
                buttonBorderRadius: 8,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: borderColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      signUpText8,
                      style: onBoardingSubTitleStyle,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: borderColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: CustomButton(
                buttonTitle: signUpButtonText2,
                buttonTextStyle: onBoardingSubTitleStyle,
                buttonBorderRadius: 8,
                buttonBorder: Border.all(
                  color: primaryColor,
                  width: 2,
                ),
                buttonHeight: 48,
                buttonWidth: 300,
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                buttonTitle: signUpButtonText3,
                buttonTextStyle: onBoardingSubTitleStyle,
                buttonBorderRadius: 8,
                buttonBorder: Border.all(
                  color: primaryColor,
                  width: 2,
                ),
                buttonHeight: 48,
                buttonWidth: 300,
                onPressed: () {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  signUpText17,
                  style: hintTextStyle,
                ),
                const SizedBox(
                  width: 3,
                ),
                CustomButton(
                  buttonTitle: loginButtonText1,
                  buttonWidth: 75,
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
