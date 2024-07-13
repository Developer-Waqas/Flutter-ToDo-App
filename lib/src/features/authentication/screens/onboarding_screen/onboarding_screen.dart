import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';
import 'package:todo_app/src/constants/image_strings/image_strings.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';

import '../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../common_widgets/custom_onboarding_container/custom_onboarding_container.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      CustomOnBoardingContainer(
        hsize: size * 0.4,
        bgColor: onBoardingColor1,
        onBoardingImage: const AssetImage(onBoardingImage1),
        title: title1,
        subtitle: subTitle1,
      ),
      CustomOnBoardingContainer(
        hsize: size * 0.4,
        bgColor: onBoardingColor2,
        onBoardingImage: const AssetImage(onBoardingImage2),
        title: title1,
        subtitle: subTitle1,
      ),
      CustomOnBoardingContainer(
        hsize: size * 0.4,
        bgColor: onBoardingColor3,
        onBoardingImage: const AssetImage(onBoardingImage3),
        title: title1,
        subtitle: subTitle1,
      ),
    ];
    final controller = LiquidController();

    return Scaffold(
      backgroundColor: splashBgColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
          ),
          SizedBox(height: 50,),
          Positioned(
            bottom: 30,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: WormEffect(
                activeDotColor: whiteColor,
                dotHeight: 5
              ),
            ),
          ),
          Positioned(child: TextButton(
            onPressed: (){},
            child: CustomButton(),
          ))
        ],
      ),
    );
  }
}


