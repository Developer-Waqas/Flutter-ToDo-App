import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/features/authentication/controllers/signup_controller/signup_controller.dart';

import '../../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../../common_widgets/custom_form_field/custom_form_field.dart';
import '../../../../../constants/app_colors/app_colors.dart';
import '../../../../../constants/app_styles/app_style.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.signUpController,
  });

  final SignUpController signUpController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              signUpText2,
              style: onBoardingSubTitleStyle,
            ),
            const SizedBox(
              height: 5,
            ),

            /// Username
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
            const SizedBox(
              height: 20,
            ),
            Text(
              signUpText4,
              style: onBoardingSubTitleStyle,
            ),

            /// Email
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

            ///SignUp
            Center(
              child: CustomButton(
                buttonTitle: signUpButtonText1,
                buttonTextStyle: onBoardingSubTitleStyle,
                buttonWidth: 327,
                buttonHeight: 48,
                buttonColor: primaryColor,
                buttonBorderRadius: 8,
                onPressed: signUpController.singUpButton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}