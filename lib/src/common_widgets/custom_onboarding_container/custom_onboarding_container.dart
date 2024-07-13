import 'package:flutter/material.dart';

import '../../constants/app_colors/app_colors.dart';
import '../../constants/app_styles/app_style.dart';
import '../../constants/image_strings/image_strings.dart';
import '../../constants/text_strings/text_strings.dart';

class CustomOnBoardingContainer extends StatelessWidget {
  const CustomOnBoardingContainer({
    super.key,
    required this.hsize,
    required this.bgColor,
    required this.onBoardingImage,
    required this.title,
    required this.subtitle,
  });

  final Size hsize;
  final Color bgColor;
  final AssetImage onBoardingImage;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            height: hsize.height,
            image: onBoardingImage,
          ),
          Column(
            children: [
              Text(title,style: onBoardingTitleStyle,),
              Text(subtitle,style: onBoardingSubTitleStyle,textAlign: TextAlign.center,)
            ],
          ),
          SizedBox(height: 50,)
        ],
      ),

    );
  }
}