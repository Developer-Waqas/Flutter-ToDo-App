import 'package:flutter/material.dart';

import '../../../../../constants/app_styles/app_style.dart';
import '../../../../../constants/image_strings/image_strings.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class SplashScreenHeaderWidget extends StatelessWidget {
  const SplashScreenHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Image(image: const AssetImage(splashImage), height: size.height * 0.1),
        const SizedBox(
          height: 10,
        ),

        /* App Name */
        Text(
          appName,
          style: logoTextStyle,
        ),
      ],
    );
  }
}
