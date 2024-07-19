import 'package:flutter/material.dart';

import '../../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../../constants/app_colors/app_colors.dart';
import '../../../../../constants/app_styles/app_style.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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

        /// Google
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

        /// Apple
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
    );
  }
}
