import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/common_widgets/custom_form_field/custom_form_field.dart';
import 'package:todo_app/src/features/authentication/screens/forgot_passowrd_screen/forgot_password_screen.dart';

import '../../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../../constants/app_colors/app_colors.dart';
import '../../../../../constants/app_styles/app_style.dart';
import '../../../../../constants/text_strings/text_strings.dart';
import '../../../controllers/login_controller/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  /* <<< ---- Login Controller ---- >>> */

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* <<< ----- Email Field ---- >>>> */
          Text(
            loginText2,
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
          const SizedBox(
            height: 20,
          ),
          Text(
            loginText4,
            style: onBoardingSubTitleStyle,
          ),
          const SizedBox(
            height: 8,
          ),

          /* <<<< ---- Password Field ---- >>>> */
      CustomFormField(
              keyboardType: TextInputType.text,
              inputTextStyle: onBoardingSubTitleStyle,
              hintText: loginText5,
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
            height: 3,
          ),

          /* <<< --- Forgot Password Button --- >>> */
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                buttonTitle: loginText8,
                onPressed: () {
                  Get.off(
                    const ForgotPasswordScreen(),
                  );
                },
                buttonWidth: 150,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          /* <<<< ----- Login Button ----- >>>>> */
          Center(
            child: CustomButton(
              buttonColor: primaryColor,
              buttonBorderRadius: 5,
              buttonTextStyle: onBoardingSubTitleStyle,
              buttonWidth: 327,
              buttonTitle: loginButtonText1,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
