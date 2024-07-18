import 'package:flutter/material.dart';

import '../../../../constants/app_styles/app_style.dart';
import '../../../../constants/text_strings/text_strings.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(signUpText1,style: onBoardingTitleStyle,),
      ],
    );
  }
}
