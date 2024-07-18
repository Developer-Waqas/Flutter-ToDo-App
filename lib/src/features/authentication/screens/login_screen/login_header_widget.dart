import 'package:flutter/material.dart';

import '../../../../constants/app_styles/app_style.dart';
import '../../../../constants/text_strings/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          loginButtonText1,
          style: loginTextStyle1,
        ),
        const SizedBox(
          height: 20,
        ),

        Text(
          loginText2,
          style: onBoardingSubTitleStyle,
        ),
      ],
    );
  }
}