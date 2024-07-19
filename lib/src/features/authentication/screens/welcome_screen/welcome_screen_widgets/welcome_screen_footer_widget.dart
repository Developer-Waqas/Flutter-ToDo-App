import 'package:flutter/material.dart';
import 'package:todo_app/src/features/authentication/controllers/welcom_controller/welcome_controller.dart';

import '../../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../../constants/app_colors/app_colors.dart';
import '../../../../../constants/app_styles/app_style.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class WelcomeScreenFooterWidget extends StatelessWidget {
  const WelcomeScreenFooterWidget({super.key, required this.welcomeController});

  final WelcomeController welcomeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* Login Button */
        /* Create Account Button */
        CustomButton(
          buttonWidth: 327,
          buttonHeight: 48,
          buttonTextStyle: onBoardingSubTitleStyle,
          buttonBorderRadius: 5,
          buttonTitle: loginBtnTitle,
          onPressed: welcomeController.loginButton,
          buttonBorder: Border.all(
            color: primaryColor,
            width: 2,
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        /* Create Account Button */
        CustomButton(
          buttonWidth: 327,
          buttonHeight: 48,
          buttonTextStyle: onBoardingSubTitleStyle,
          buttonBorderRadius: 5,
          buttonTitle: createAccBtnTitle,
          onPressed: welcomeController.signUpBtn,
          buttonBorder: Border.all(
            color: primaryColor,
            width: 2,
          ),
        ),
      ],
    );
  }
}
