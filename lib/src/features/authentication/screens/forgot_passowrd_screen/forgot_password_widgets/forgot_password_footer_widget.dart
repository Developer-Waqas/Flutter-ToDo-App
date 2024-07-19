import 'package:flutter/material.dart';

import '../../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../../constants/app_colors/app_colors.dart';
import '../../../../../constants/app_styles/app_style.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class ForgotPasswordFooterWidget extends StatelessWidget {
  const ForgotPasswordFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
