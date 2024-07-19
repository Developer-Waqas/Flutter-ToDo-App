import 'package:flutter/material.dart';

import '../../../../../constants/app_styles/app_style.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class WelcomeScreenHeaderWidget extends StatelessWidget {
  const WelcomeScreenHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          welcomeTitle,
          style: welcomeTitleStyle,
        ),
        const SizedBox(
          height: 40,
        ),

        /* << -- Sub Heading --- >>> */
        Text(
          welcomeSubtitle,
          style: onBoardingSubTitleStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
