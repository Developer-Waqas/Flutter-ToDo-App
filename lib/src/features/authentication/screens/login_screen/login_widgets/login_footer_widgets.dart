import 'package:flutter/material.dart';

import '../../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../../constants/app_colors/app_colors.dart';
import '../../../../../constants/app_styles/app_style.dart';
import '../../../../../constants/text_strings/text_strings.dart';
import '../../../controllers/login_controller/login_controller.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = LoginController();

    return Column(
      children: [
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
    );
  }
}
