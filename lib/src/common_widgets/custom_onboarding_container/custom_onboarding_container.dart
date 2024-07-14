import 'package:flutter/material.dart';
import 'package:todo_app/src/common_widgets/custom_button/custom_button.dart';

import '../../constants/app_colors/app_colors.dart';
import '../../constants/app_styles/app_style.dart';
import '../../constants/image_strings/image_strings.dart';
import '../../constants/text_strings/text_strings.dart';

class CustomOnBoardingContainer extends StatelessWidget {

  final Color bgColor;
  final AssetImage onBoardingImage;
  final String title;
  final String subtitle;

   CustomOnBoardingContainer({
    super.key,
    required this.bgColor,
    required this.onBoardingImage,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Container(
      color: bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            height: size.height * 0.3,
            image: onBoardingImage,
          ),
          Column(
            children: [
              Text(title,style: onBoardingTitleStyle,),
              SizedBox(height: 20,),
              Text(subtitle,style: onBoardingSubTitleStyle,textAlign: TextAlign.center,)
            ],
          ),
          SizedBox(height: 50,),
        ],
      ),

    );
  }
}