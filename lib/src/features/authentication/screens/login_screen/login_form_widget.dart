import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/common_widgets/custom_form_field/custom_form_field.dart';
import 'package:todo_app/src/features/authentication/screens/forgot_passowrd_screen/forgot_password_screen.dart';

import '../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../constants/app_colors/app_colors.dart';
import '../../../../constants/app_styles/app_style.dart';
import '../../../../constants/text_strings/text_strings.dart';
import '../../controllers/login_controller/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.loginController,
  });

  /* <<< ---- Login Controller ---- >>> */
  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginController.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* <<< ----- Email Field ---- >>>> */
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
            onValid: (userName) => loginController.validEmail(userName),
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
          Obx(
            () => CustomFormField(
              keyboardType: TextInputType.text,
              inputTextStyle: onBoardingSubTitleStyle,
              hintText: loginText5,
              hintTextStyle: hintTextStyle,
              obscureText: loginController.isHidden.value,
              suffixIcon: GestureDetector(
                onTap: loginController.togglePasswordView,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, top: 10),
                  child: Text(
                    loginController.isHidden.value ? loginText9 : loginText10,
                    style: onBoardingSubTitleStyle,
                  ),
                ),
              ),
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: borderColor,
                  width: 2,
                ),
              ),
              onValid: (pass) => loginController.validPassword(pass),
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
              onPressed: () => loginController.onLogin(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          /* <<< --- Divider Or Divider ---- >>>> */
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    loginText6,
                    style: hintTextStyle,
                  ),
                ),
                const Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          /* <<< --- Google Login ---- >>>> */
          Center(
            child: CustomButton(
              buttonBorderRadius: 5,
              buttonTextStyle: onBoardingSubTitleStyle,
              buttonWidth: 327,
              buttonTitle: loginButtonText2,
              buttonBorder: Border.all(color: primaryColor),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          /* <<<< ---- Apple Login ----- >>>> */
          Center(
            child: CustomButton(
              buttonBorderRadius: 5,
              buttonTextStyle: onBoardingSubTitleStyle,
              buttonWidth: 327,
              buttonTitle: loginButtonText3,
              buttonBorder: Border.all(color: primaryColor),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
