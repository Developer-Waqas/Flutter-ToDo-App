import 'package:flutter/material.dart';

import '../../../../constants/app_styles/app_style.dart';
import '../../../../constants/text_strings/text_strings.dart';

class ForgotPasswordHeaderWidget extends StatelessWidget {
  const ForgotPasswordHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          forgotText1,
          style: welcomeTitleStyle,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          forgotSubText1,
          style: onBoardingSubTitleStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          loginText2,
          style: onBoardingSubTitleStyle,
        ),
      ],
    );
  }
}
